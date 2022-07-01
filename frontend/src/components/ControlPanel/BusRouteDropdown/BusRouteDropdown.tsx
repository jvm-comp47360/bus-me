// React
import React, {Dispatch, SetStateAction} from 'react';

// Material UI
import {Autocomplete, AutocompleteRenderInputParams, TextField}
  from '@mui/material';

// Types
import BusRoute from '../../../types/BusRoute';
import BusStop from '../../../types/BusStop';

interface Props {
  busRoutes: BusRoute[];
  setRouteSelection: Dispatch<SetStateAction<BusRoute | undefined>>;
}

const BusRouteDropdown = ({busRoutes,
  setRouteSelection,
}: Props): JSX.Element => {
  const changeHandler = (
      event: React.SyntheticEvent<Element, Event>,
      value: BusRoute | undefined,
  ) => {
    if (value) {
      setRouteSelection(value);
    } else {
      throw new Error('Something has gone wrong with the route naming.');
    }
  };

  return <>
    <Autocomplete
      disableClearable={true}
      getOptionLabel={(option: BusRoute) => option.name}
      options={busRoutes}
      onChange={changeHandler}
      sx={{width: 300}}
      renderInput={(params: AutocompleteRenderInputParams) =>
        <TextField {...params} label={'Select Route'}/>}
    />
  </>;
};

export default BusRouteDropdown;
