import Button from '@mui/material/Button';
import {Box, TextField} from '@mui/material';
import BusStopDropdown from './BusStopsDropdown/BusStopDropdown';
import BusRouteDropdown from './BusRouteDropdown/BusRouteDropdown';
import {DateTimePicker} from '@mui/x-date-pickers';

type BusRoute = {
  id: string;
  name: string;
  bus_stops: BusStops[];
};

type BusStops = {
  id: string;
  name: string;
  number: number;
  latitude: string;
  longitude: string;
}

interface Props {
  busRoutes: BusRoute[];
}

const ControlPanel = ({busRoutes}: Props): JSX.Element => {
  // To be updated with introduction of state.
  // Types to be added once we decide what to do
  // with this function.
  const dateTimeChangeHandler = () => {
    return;
  };

  return <Box display={'flex'} flexDirection={'column'} alignItems={'center'}>
    <BusRouteDropdown busRoutes={['1', '2', '3']}/>
    <Box
      display={'flex'}
      flexDirection={'row'}
      flexWrap={'wrap'}
      justifyContent={'center'}
      margin={1}
    >
      <BusStopDropdown busStops={busRoutes[0]['bus_stops']} label={'Start'}/>
      <BusStopDropdown busStops={busRoutes[0]['bus_stops']} label={'Finish'}/>
      <DateTimePicker
        onChange={dateTimeChangeHandler}
        value={null}
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
