import Button from '@mui/material/Button';
import {Box} from '@mui/material';
import BusStopDropdown from './BusStopsDropdown/BusStopDropdown';
import BusRouteDropdown from './BusRouteDropdown/BusRouteDropdown';

type BusStops = {
  id: string;
  name: string;
  number: number;
  latitude: string;
  longitude: string;
  route: string;
}

interface Props {
  busStops: BusStops[];
}

const ControlPanel = ({busStops}: Props): JSX.Element => {
  const busRoutes: string[] = [...new Set(busStops.map((item) => item.route))];

  return <Box display={'flex'} flexDirection={'column'} alignItems={'center'}>
    <BusRouteDropdown busRoutes={busRoutes}/>
    <Box
      display={'flex'}
      flexDirection={'row'}
      flexWrap={'wrap'}
      justifyContent={'center'}
      margin={1}
    >
      <BusStopDropdown busStops={busStops} label={'Start'}/>
      <BusStopDropdown busStops={busStops} label={'Finish'}/>
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
