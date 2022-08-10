// React
import React, {Dispatch, SetStateAction} from 'react';

// Material UI
import {Autocomplete, AutocompleteRenderInputParams, Box, makeStyles, TextField}
  from '@mui/material';

// Types
import BusRoute from '../../../../types/BusRoute';

interface Props {
  busRoutes: BusRoute[];
  routeSelection: BusRoute | undefined;
  setRouteSelection: Dispatch<SetStateAction<BusRoute | undefined>>;
}

const BusRouteDropdown = ({busRoutes, routeSelection,
  setRouteSelection,
}: Props): JSX.Element => {
  const changeHandler = (
      event: React.SyntheticEvent<Element, Event>,
      value: BusRoute | null,
  ) => {
    if (value) {
      setRouteSelection(value);
    } else {
      throw new Error('Something has gone wrong with the route naming.');
    }
  };

  // Source: https://stackoverflow.com/questions/2802341/javascript-natural-sort-of-alphanumerical-strings
  const sortBusRoutes = (busRoutes: BusRoute[]): BusRoute[] => {
    return busRoutes.sort((a: BusRoute, b: BusRoute) => {
      return a.name.localeCompare(b.name, undefined, {
        numeric: true,
        sensitivity: 'base'
      });
    });
  };

  return <>
    <Autocomplete
      value={routeSelection || null}
      onChange={changeHandler}
      getOptionLabel={(option: BusRoute) => option.name}
      options={sortBusRoutes(busRoutes)}
      sx={{height: 70, width: 400}}
      renderOption={(props, option: BusRoute) => {
        return (
          <span {...props} style={{backgroundColor: 'white'}}>
            {option.name}
          </span>
        )
      }
    }
      renderInput={(params: AutocompleteRenderInputParams) =>
        <TextField {...params} label={'Select Route'}/>}
    />
  </>;
};

export default BusRouteDropdown;
