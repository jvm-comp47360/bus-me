import {Autocomplete, TextField} from '@mui/material';

type BusStop = {
  id: string;
  name: string;
  number: number;
  latitude: string;
  longitude: string;
}

interface Props {
  busStops: BusStop[];
  label: string;
}

const BusStopDropdown = ({busStops, label}: Props): JSX.Element => {
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
