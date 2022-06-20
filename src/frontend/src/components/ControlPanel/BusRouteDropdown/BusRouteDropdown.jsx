import PropTypes from 'prop-types';
import {Autocomplete, TextField} from '@mui/material';

const BusRouteDropdown = ({busRoutes}) => {
  return <>
    <Autocomplete
      options={busRoutes}
      sx={{width: 300}}
      renderInput={(params) => <TextField {...params} label={'Select Route'}/>}
    />
  </>;
};

export default BusRouteDropdown;

BusRouteDropdown.propTypes = {
  busRoutes: PropTypes.arrayOf(PropTypes.string),
};
