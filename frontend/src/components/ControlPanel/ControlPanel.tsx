// React
import {Dispatch, SetStateAction, useEffect, useState} from 'react';

// Material UI
import Button from '@mui/material/Button';
import {Box, Slide, Typography} from '@mui/material';

// Types
import BusRoute from '../../types/BusRoute';
import BusStop from '../../types/BusStop';
type DirectionsResult = google.maps.DirectionsResult;

// Components
import RouteSelectionPanel from './RouteSelectionPanel/RouteSelectionPanel';
import StopSelectionPanel from './StopSelectionPanel/StopSelectionPanel';

interface Props {
  startSelection: BusStop | undefined;
  setStartSelection: Dispatch<SetStateAction<BusStop | undefined>>;
  finishSelection: BusStop | undefined;
  setFinishSelection: Dispatch<SetStateAction<BusStop | undefined>>;
  routeSelection: BusRoute | undefined;
  setRouteSelection: Dispatch<SetStateAction<BusRoute | undefined>>;
  setPrediction: Dispatch<SetStateAction<number | undefined>>;
  setDirections: Dispatch<SetStateAction<DirectionsResult | null>>;
  multiRoute: boolean;
  setMultiRoute: Dispatch<SetStateAction<boolean>>;
}

// Animation Bug Fix Credit:
// https://stackoverflow.com/questions/55647969/how-to-get-one-elements-to-slide-in-while-the-other-slides-out-using-react-and

const ControlPanel = ({
                        startSelection,
                        setStartSelection,
                        finishSelection,
                        setFinishSelection,
                        routeSelection,
                        setRouteSelection,
                        setPrediction,
                        setDirections,
                        multiRoute,
                        setMultiRoute,
                      }: Props): JSX.Element => {

  const [busRoutes, setBusRoutes] = useState<BusRoute[]>([])
  const [busStops, setBusStops] = useState<BusStop[]>([])

  const [dateTimeSelection, setDateTimeSelection] =
      useState<Date | undefined>(new Date());

  const [checked, setChecked] = useState<boolean>(false);

  useEffect(() => {
    const localStorageRoutes: string | null =
      localStorage.getItem('bus_routes');

    const localStorageStops: string | null =
      localStorage.getItem('bus_stops');

    if (localStorageRoutes) {
      setBusRoutes(JSON.parse(localStorageRoutes));
    } else {
      fetch('http://ipa-002.ucd.ie/api/bus_routes/')
        .then((response) => {
          if (response.ok) {
            return response.json() as Promise<BusRoute[]>;
          } else {
            throw new Error();
          }
        })
        .then((data) => {
          setBusRoutes(data);
          localStorage.setItem('bus_routes', JSON.stringify(data))
        })
        .catch((error) => console.log(error));
    }

    if (localStorageStops) {
      setBusStops(JSON.parse(localStorageStops));
    } else {
      fetch('http://ipa-002.ucd.ie/api/bus_stops/')
        .then((response) => {
          if (response.ok) {
            return response.json() as Promise<BusStop[]>;
          } else {
            throw new Error();
          }
        })
        .then((data) => {
          setBusStops(data);
          localStorage.setItem('bus_stops', JSON.stringify(data))
        })
        .catch((error) => console.log(error));
    }
  }, [])

  const resetSelections = () => {
    if (checked) {
      setStartSelection(undefined)
      setFinishSelection(undefined)
      setPrediction(undefined)
      setRouteSelection(undefined)
      setDirections(null)
    }
  }

  return <Box
    display={'flex'}
    flexDirection={'row'}
    flexWrap={'wrap'}
    justifyContent={'center'}
    margin={1}
  >
    <Button onClick={() => {
      setMultiRoute(!multiRoute)
        setStartSelection(undefined)
        setFinishSelection(undefined)
        setPrediction(undefined)
        setRouteSelection(undefined)
        setDirections(null)
        if (checked) {
          setChecked(false)
        }
      }
    }>Toggle</Button>
    {(multiRoute) ? null : <RouteSelectionPanel
      busRoutes={busRoutes}
      routeSelection={routeSelection}
      setRouteSelection={setRouteSelection}
      setStartSelection={setStartSelection}
      setFinishSelection={setFinishSelection}
      checked={checked}
      setChecked={setChecked}
    />}
    <StopSelectionPanel
      busRoutes={busRoutes}
      busStops={busStops}
      routeSelection={routeSelection}
      startSelection={startSelection}
      setStartSelection={setStartSelection}
      finishSelection={finishSelection}
      setFinishSelection={setFinishSelection}
      dateTimeSelection={dateTimeSelection}
      setDateTimeSelection={setDateTimeSelection}
      setPrediction={setPrediction}
      setDirections={setDirections}
      multiRoute={multiRoute}
    />
  </Box>;
};

export default ControlPanel;