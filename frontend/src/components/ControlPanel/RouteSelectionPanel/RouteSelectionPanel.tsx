// React
import React, {Dispatch, SetStateAction, useState} from 'react';

// Material UI
import {Autocomplete, AutocompleteRenderInputParams, Box, Slide, TextField, TextFieldProps, Typography}
  from '@mui/material';

// Props
import BusRouteDropdown from './BusRouteDropdown/BusRouteDropdown';
import BusRoute from '../../../types/BusRoute';
import Button from "@mui/material/Button";
import BusStop from "../../../types/BusStop";

interface Props {
    busRoutes: BusRoute[];
    routeSelection: BusRoute | undefined;
    setRouteSelection: Dispatch<SetStateAction<BusRoute | undefined>>;
  setStartSelection: Dispatch<SetStateAction<BusStop | undefined>>;
  setFinishSelection: Dispatch<SetStateAction<BusStop | undefined>>;
  checked: boolean;
  setChecked: Dispatch<SetStateAction<boolean>>;
}

const RouteSelectionDropdown = ({
                               busRoutes,
                                  routeSelection,
                               setRouteSelection,
                              setStartSelection,
                                  setFinishSelection,
                              checked,
                              setChecked,
                           }: Props): JSX.Element => {

  const slideHandler = () => {
    setChecked((prev) => !prev);
    resetStartAndFinishSelection();
  };

  const toggleDisableHandler = (): boolean => {
    return routeSelection === undefined;
  }

  const resetStartAndFinishSelection = () => {
    if (checked) {
      setStartSelection(undefined)
      setFinishSelection(undefined)
    }
  }
    return <Box
      display={'flex'}
      flexDirection={'column'}
      flexWrap={'wrap'}
      justifyContent={'center'}
      margin={1}
      width={400}
    >
      {!checked ? (
        <Slide
          direction={'up'}
          in={!checked}
          mountOnEnter
          unmountOnExit
        >
          <div>
            <BusRouteDropdown
              setChecked={setChecked}
              busRoutes={busRoutes}
              routeSelection={routeSelection}
              setRouteSelection={setRouteSelection}
            />
          </div>
        </Slide>
      ) : null}
      {checked ? (
        <Slide
          direction={'up'}
          in={checked}
          mountOnEnter
          unmountOnExit
        >
          <div>
            <Box
              display={'flex'}
              flexDirection={'column'}
              alignItems={'center'}
              height={70}
            >
              {
                (routeSelection) ?
                  <Typography variant={'h6'}>
                    {`${routeSelection.name} (to ${routeSelection.bus_stops[routeSelection.bus_stops.length - 1]['name']})`}
                  </Typography>
                  : null
              }
              <Button
                onClick={slideHandler}
                disabled={toggleDisableHandler()}
              >
                Select Route
              </Button>
            </Box>
          </div>
        </Slide>
      ) : null}
      </Box>
};

export default RouteSelectionDropdown;
