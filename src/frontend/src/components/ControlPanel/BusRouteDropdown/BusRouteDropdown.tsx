import {Autocomplete, TextField} from '@mui/material';

interface Props {
  busRoutes: string[];
}

const BusRouteDropdown = ({busRoutes}: Props): JSX.Element => {
  return <>
    <Autocomplete
      options={busRoutes}
      sx={{width: 300}}
      renderInput={(params) => <TextField {...params} label={'Select Route'}/>}
    />
  </>;
};

export default BusRouteDropdown;
