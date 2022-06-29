import {Autocomplete, TextField} from '@mui/material';
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
}

const BusRouteDropdown = ({busRoutes}: Props): JSX.Element => {
  return <>
    <Autocomplete
      options={busRoutes.map((busRoutes) => busRoutes['name'])}
      sx={{width: 300}}
      renderInput={(params) => <TextField {...params} label={'Select Route'}/>}
    />
  </>;
};

export default BusRouteDropdown;
