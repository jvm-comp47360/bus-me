import Button from '@mui/material/Button';
import {Box, TextField, TextFieldProps} from '@mui/material';
import BusStopDropdown from './BusStopsDropdown/BusStopDropdown';
import BusRouteDropdown from './BusRouteDropdown/BusRouteDropdown';
import {DateTimePicker} from '@mui/x-date-pickers';
import {Dispatch, SetStateAction} from 'react';
import BusRoute from '../../types/BusRoute';
import BusStop from '../../types/BusStop';

interface Props {
  busRoutes: BusRoute[];
  setBusRoutes: Dispatch<SetStateAction<BusRoute[]>>;
  busStops: BusStop[];
  setBusStops: Dispatch<SetStateAction<BusStop[]>>;
  startSelection: BusStop | null;
  setStartSelection: Dispatch<SetStateAction<BusStop | null>>;
  finishSelection: BusStop | null;
  setFinishSelection: Dispatch<SetStateAction<BusStop | null>>;
  routeSelection: BusRoute | null;
  setRouteSelection: Dispatch<SetStateAction<BusRoute | null>>
  dateTimeSelection: Date
  setDateTimeSelection: Dispatch<SetStateAction<Date>>;
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
  // To be updated with introduction of state.
  // Types to be added once we decide what to do
  // with this function.
  const dateTimeChangeHandler = () => {
    return;
  };

  const submitDisableHandler = (): boolean =>
    routeSelection === null ||
    startSelection === null ||
      finishSelection === null;

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
