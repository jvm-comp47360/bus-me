import {Autocomplete, TextField} from '@mui/material';
import PropTypes from 'prop-types';

const BusStopDropdown = ({busStops, label}) => {
  return <>
    <Autocomplete
      getOptionLabel={(option) => `${option.name}, Stop No.${option.number}`}
      options={busStops}
      sx={{width: 300}}
      renderInput={(params) => <TextField {...params} label={label}/>}
    />
  </>;
};

export default BusStopDropdown;

BusStopDropdown.propTypes = {
  busStops: PropTypes.arrayOf(PropTypes.object),
  label: PropTypes.string,
};
