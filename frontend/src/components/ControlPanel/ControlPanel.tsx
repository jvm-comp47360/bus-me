// React
import {Dispatch, SetStateAction, useEffect, useState} from 'react';

// Components
import BusStopDropdown from './BusStopsDropdown/BusStopDropdown';
import BusRouteDropdown from './BusRouteDropdown/BusRouteDropdown';

// Material UI
import Button from '@mui/material/Button';
import {Box, Slide, TextField, TextFieldProps} from '@mui/material';
import {DateTimePicker} from '@mui/x-date-pickers';

// Types
import BusRoute from '../../types/BusRoute';
import BusStop from '../../types/BusStop';
type DirectionsResult = google.maps.DirectionsResult;
type DirectionsStatus = google.maps.DirectionsStatus;

interface Props {
  startSelection: BusStop | undefined;
  setStartSelection: Dispatch<SetStateAction<BusStop | undefined>>;
  finishSelection: BusStop | undefined;
  setFinishSelection: Dispatch<SetStateAction<BusStop | undefined>>;
  routeSelection: BusRoute | undefined;
  setRouteSelection: Dispatch<SetStateAction<BusRoute | undefined>>
  setPrediction: Dispatch<SetStateAction<number | undefined>>
  setDirections: Dispatch<SetStateAction<DirectionsResult | null>>
}

const ControlPanel = ({
                        startSelection,
                        setStartSelection,
                        finishSelection,
                        setFinishSelection,
                        routeSelection,
                        setRouteSelection,
                        setPrediction,
                        setDirections,
                      }: Props): JSX.Element => {

  const [busRoutes, setBusRoutes] = useState<BusRoute[]>([])

  useEffect(() => {
    fetch('http://ipa-002.ucd.ie/api/bus_routes/')
      .then((response) => {
        if (response.ok) {
          return response.json() as Promise<BusRoute[]>;
        } else {
          throw new Error();
        }
      })
      .then(setBusRoutes)
      .catch((error) => console.log(error));
  }, [])

  const [dateTimeSelection, setDateTimeSelection] =
    useState<Date | undefined>(new Date());

  const [checked, setChecked] = useState(false);

  // DateTime helper functions
  const dateTimeChangeHandler = (selectedDateTime: Date | null) => {
    if (selectedDateTime) {
      setDateTimeSelection(selectedDateTime);
    }
  };

  const toggleText = () => {
    if (checked) {
      return 'PREVIOUS';
    } else {
      return 'NEXT';
    }
  };

  // Submit Button helper functions
  const submitDisableHandler = (): boolean =>
    routeSelection === undefined ||
    startSelection === undefined ||
    finishSelection === undefined;

  const slideHandler = () => {
    setChecked((prev) => !prev);
  };

  const getSeconds = (date: Date) => {
    const minutes = date.getMinutes();
    const hours = date.getHours();
    return ((60 * hours) + minutes) * 60;
  }

  const getNumStopsSegment = (routeSelection: BusRoute, startSelection: BusStop, finishSelection: BusStop): number => {
    const start_stop_number = routeSelection.bus_stops.indexOf(startSelection)
    const finish_stop_number = routeSelection.bus_stops.indexOf(finishSelection)
    return Math.abs(finish_stop_number - start_stop_number);

  }

  // This is where the POST API call will go.
  const submitClickHandler = () => {
    if (routeSelection === undefined || dateTimeSelection === undefined ||
      startSelection === undefined || finishSelection === undefined) {
      return;
    }
    const route: string = routeSelection.name
    const num_stops_segment = getNumStopsSegment(routeSelection, startSelection, finishSelection);
    const time: string = getSeconds(dateTimeSelection).toString()

    fetch(`http://ipa-002.ucd.ie/api/prediction/${route}/${num_stops_segment}/${time}`)
      .then((response) => {
        if (response.ok) {
          return response.json();
        } else {
          throw new Error();
        }
      })
      .then((data) => {
        const prediction: number = Math.round(data['prediction'] * 10) / 10
        setPrediction(prediction)
      })
      .catch((error) => console.log(error));
  };

  const showRouteClickHandler = () => {
    if (startSelection && finishSelection) {
      const userDirectionsRequest: google.maps.DirectionsRequest = {
        origin: {
          lat: +startSelection.latitude,
          lng: +startSelection.longitude
        },
        destination: {
          lat: +finishSelection.latitude,
          lng: +finishSelection.longitude,
        },
        travelMode: google.maps.TravelMode.TRANSIT,
        transitOptions: {
          modes: [google.maps.TransitMode.BUS]
        }
      };
      const directionsServiceCallback = (
        response: DirectionsResult | null,
        status: DirectionsStatus,
      ) => {
        if (response && status === 'OK') { // response was state of directions
          setDirections(response);
        }
      };
      const service = new google.maps.DirectionsService();
      service.route(userDirectionsRequest, directionsServiceCallback);
    }
  };

  return <Box
    display={'flex'}
    flexDirection={'column'}
    alignItems={'center'}
    m={2}
  >
    <Slide direction={'up'} in={!checked} mountOnEnter unmountOnExit>
      <div>
        <BusRouteDropdown
          busRoutes={busRoutes}
          setRouteSelection={setRouteSelection}
        />
      </div>
    </Slide>
    <Slide direction={'up'} in={checked} mountOnEnter unmountOnExit>
      <div>
        <Box
          display={'flex'}
          flexDirection={'row'}
          flexWrap={'wrap'}
          justifyContent={'center'}
          margin={1}
        >
          <BusStopDropdown
            busRoutes={busRoutes}
            routeSelection={routeSelection}
            label={'Start'}
            setSelection={setStartSelection}
          />
          <BusStopDropdown
            busRoutes={busRoutes}
            routeSelection={routeSelection}
            label={'Finish'}
            setSelection={setFinishSelection}
          />
          <DateTimePicker
            onChange={dateTimeChangeHandler}
            value={dateTimeSelection}
            renderInput={(params: TextFieldProps) => <TextField {...params} />}
          />
        </Box>
      </div>
    </Slide>
    <Button onClick={slideHandler}>{toggleText()}</Button>
    <Button
      variant={'contained'}
      onClick={submitClickHandler}
      disabled={submitDisableHandler()}
      style={{maxWidth: '30%'}}
      sx={{margin: 1}}
    >
      BusMe!
    </Button>

    <Button
      variant={'contained'}
      onClick={showRouteClickHandler}
      style={{maxWidth: '30%'}}
      sx={{margin: 1}}
    >
      Show Route!
    </Button>
  </Box>;
};

export default ControlPanel;