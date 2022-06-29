import {Autocomplete, TextField} from '@mui/material';
import React, {Dispatch, SetStateAction} from 'react';

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

const BusRouteDropdown = ({busRoutes, setBusStops}: Props): JSX.Element => {
  const changeHandler = (
      event: React.SyntheticEvent<Element, Event>,
      value: string | null,
  ) => {
    const currentBusRoute: BusRoute | undefined =
        busRoutes.find((x: BusRoute) => x.name === value);

    // Throw error if it can't find the bus route
    // with that name (shouldn't happen).
    if (!currentBusRoute) {
      throw new Error('Something has gone wrong with bus route names.');
    }

    const currentBusStops: BusStop[] = currentBusRoute.bus_stops;

    setBusStops(currentBusStops);
  };

  return <>
    <Autocomplete
      options={busRoutes.map((busRoutes) => busRoutes.name)}
      onChange={changeHandler}
      sx={{width: 300}}
      renderInput={(params) => <TextField {...params} label={'Select Route'}/>}
    />
  </>;
};

export default BusRouteDropdown;
