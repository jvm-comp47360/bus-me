import {Autocomplete, TextField} from '@mui/material';

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
