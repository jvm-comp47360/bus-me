// React
import {Dispatch, SetStateAction} from 'react';

// Components
import BusStopDropdown from './BusStopsDropdown/BusStopDropdown';
import BusRouteDropdown from './BusRouteDropdown/BusRouteDropdown';

// Material UI
import Button from '@mui/material/Button';
import {Box, TextField, TextFieldProps} from '@mui/material';
import {DateTimePicker} from '@mui/x-date-pickers';

// Types
import BusRoute from '../../types/BusRoute';
import BusStop from '../../types/BusStop';

interface Props {
  busRoutes: BusRoute[];
  setBusRoutes: Dispatch<SetStateAction<BusRoute[]>>;
  busStops: BusStop[];
  setBusStops: Dispatch<SetStateAction<BusStop[]>>;
  startSelection: BusStop | undefined;
  setStartSelection: Dispatch<SetStateAction<BusStop | undefined>>;
  finishSelection: BusStop | undefined;
  setFinishSelection: Dispatch<SetStateAction<BusStop | undefined>>;
  routeSelection: BusRoute | undefined;
  setRouteSelection: Dispatch<SetStateAction<BusRoute | undefined>>
  dateTimeSelection: Date | undefined;
  setDateTimeSelection: Dispatch<SetStateAction<Date | undefined>>;
  prediction: number | undefined;
  setPrediction: Dispatch<SetStateAction<number | undefined>>
}

const ControlPanel = ({
  busRoutes,
  setBusRoutes,
  busStops,
  setBusStops,
  startSelection,
  setStartSelection,
  finishSelection,
  setFinishSelection,
  routeSelection,
  setRouteSelection,
  dateTimeSelection,
  setDateTimeSelection,
}: Props): JSX.Element => {
  // DateTime helper functions
  const dateTimeChangeHandler = (selectedDateTime: Date | null) => {
    if (selectedDateTime) {
      setDateTimeSelection(selectedDateTime);
    }
  };

  // Submit Button helper functions
  const submitDisableHandler = (): boolean =>
    routeSelection === undefined ||
    startSelection === undefined ||
      finishSelection === undefined;

  // This is where the POST API call will go.
  const submitClickHandler = () => {
    console.log(routeSelection,
        startSelection,
        finishSelection,
        dateTimeSelection,
    );
  };

  return <Box
    display={'flex'}
    flexDirection={'column'}
    alignItems={'center'}
    m={2}
  >
    <BusRouteDropdown
      busRoutes={busRoutes}
      setBusRoutes={setBusRoutes}
      busStops={busStops}
      setBusStops={setBusStops}
      routeSelection={routeSelection}
      setRouteSelection={setRouteSelection}
    />
    <Box
      display={'flex'}
      flexDirection={'row'}
      flexWrap={'wrap'}
      justifyContent={'center'}
      margin={1}
    >
      <BusStopDropdown
        busStops={busStops}
        setBusStops={setBusStops}
        label={'Start'}
        selection={startSelection}
        setSelection={setStartSelection}
      />
      <BusStopDropdown
        busStops={busStops}
        setBusStops={setBusStops}
        label={'Finish'}
        selection={finishSelection}
        setSelection={setFinishSelection}
      />
      <DateTimePicker
        onChange={dateTimeChangeHandler}
        value={dateTimeSelection}
        renderInput={(params: TextFieldProps) => <TextField {...params} />}
      />
    </Box>
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
