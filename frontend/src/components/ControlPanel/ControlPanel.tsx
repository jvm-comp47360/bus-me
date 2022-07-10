// React
import {Dispatch, SetStateAction, useEffect, useState} from 'react';

// Components
import BusStopDropdown from './BusStopsDropdown/BusStopDropdown';
import BusRouteDropdown from './BusRouteDropdown/BusRouteDropdown';
import MOCK_BUS_ROUTES from '../../mockdata/MOCK_BUS_ROUTES.json';

// Material UI
import Button from '@mui/material/Button';
import {Box, Slide, TextField, TextFieldProps} from '@mui/material';
import {DateTimePicker} from '@mui/x-date-pickers';

// Types
import BusRoute from '../../types/BusRoute';
import BusStop from '../../types/BusStop';
import Weather from "../../types/Weather";

interface Props {
  startSelection: BusStop | undefined;
  setStartSelection: Dispatch<SetStateAction<BusStop | undefined>>;
  finishSelection: BusStop | undefined;
  setFinishSelection: Dispatch<SetStateAction<BusStop | undefined>>;
  routeSelection: BusRoute | undefined;
  setRouteSelection: Dispatch<SetStateAction<BusRoute | undefined>>
  setPrediction: Dispatch<SetStateAction<number | undefined>>
}

const ControlPanel = ({
  startSelection,
  setStartSelection,
  finishSelection,
  setFinishSelection,
  routeSelection,
  setRouteSelection,
  setPrediction,
}: Props): JSX.Element => {

  const [busRoutes, setBusRoutes] = useState<BusRoute[]>([])

  useEffect(() => {
    fetch('http://localhost:8000/api/bus_routes/')
      .then((response) => response.json() as Promise<BusRoute[]>)
      .then(setBusRoutes)
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

  // This is where the POST API call will go.
  const submitClickHandler = () => {
    console.log(routeSelection,
        startSelection,
        finishSelection,
        dateTimeSelection,
    );
    setPrediction(35.0);
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
  </Box>;
};

export default ControlPanel;
