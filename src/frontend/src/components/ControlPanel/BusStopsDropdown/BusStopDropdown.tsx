import {Autocomplete, TextField} from '@mui/material';
import {FC, ReactElement} from 'react';

export interface BusStops {
  id: string;
  name: string;
  number: number;
  latitude: string;
  longitude: string;
  route: string;
}

export type Props = {
  busStops: BusStops[];
  label: string;
}

const BusStopDropdown: FC<Props> = ({busStops, label}): ReactElement => {
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