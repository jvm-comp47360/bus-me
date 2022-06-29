import Button from '@mui/material/Button';
import {Box, TextField} from '@mui/material';
import BusStopDropdown from './BusStopsDropdown/BusStopDropdown';
import BusRouteDropdown from './BusRouteDropdown/BusRouteDropdown';
import {DateTimePicker} from '@mui/x-date-pickers';
import {Dispatch, SetStateAction} from 'react';

type BusRoute = {
  id: string;
  name: string;
  bus_stops: BusStop[];
};

type BusStop = {
  id: string;
  name: string;
  number: number;
  latitude: string;
  longitude: string;
}

interface Props {
  busRoutes: BusRoute[];
  setBusRoutes: Dispatch<SetStateAction<BusRoute[]>>;
  busStops: BusStop[];
  setBusStops: Dispatch<SetStateAction<BusStop[]>>;
  startSelection: BusStop | null;
  setStartSelection: Dispatch<SetStateAction<BusStop | null>>;
  finishSelection: BusStop | null;
  setFinishSelection: Dispatch<SetStateAction<BusStop | null>>;
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
  dateTimeSelection,
  setDateTimeSelection,
}: Props): JSX.Element => {
  // To be updated with introduction of state.
  // Types to be added once we decide what to do
  // with this function.
  const dateTimeChangeHandler = () => {
    return;
  };

  return <Box display={'flex'} flexDirection={'column'} alignItems={'center'}>
    <BusRouteDropdown
      busRoutes={busRoutes}
      setBusRoutes={setBusRoutes}
      busStops={busStops}
      setBusStops={setBusStops}
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
        renderInput={(params) => <TextField {...params} />}
      />
    </Box>
    <Button
      variant={'contained'}
      disabled={true}
      style={{maxWidth: '30%'}}
      sx={{margin: 1}}
    >
      BusMe!
    </Button>
  </Box>;
};

export default ControlPanel;
