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
}

const RouteSelectionDropdown = ({
                               busRoutes,
                                  routeSelection,
                               setRouteSelection,
                              setStartSelection,
                                  setFinishSelection
                           }: Props): JSX.Element => {

  const [checked, setChecked] = useState(false);

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
    return <>
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
      </>
};

export default RouteSelectionDropdown;
