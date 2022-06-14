import Button from '@mui/material/Button';
import {Box, Stack} from '@mui/material';
import BusStopDropdown from './BusStopsDropdown/BusStopDropdown';

const ControlPanel = ({busStops}) => {
  return <Box display={'flex'} flexDirection={'column'} alignItems={'center'}>
    <Stack
      display={'flex'}
      flexWrap={'wrap'}
      direction={'row'}
      spacing={1}
      margin={1}
      justifyContent={'center'}
    >
      <BusStopDropdown busStops={busStops} label={'Start'}/>
      <BusStopDropdown busStops={busStops} label={'Finish'}/>
    </Stack>
    <Button
      variant={'contained'}
      disabled={true}
      style={{maxWidth: '30%'}}
    >
      BusMe!
    </Button>;
  </Box>;
};

export default ControlPanel;
