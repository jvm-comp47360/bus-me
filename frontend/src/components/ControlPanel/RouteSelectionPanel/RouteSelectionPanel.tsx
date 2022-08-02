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

type DirectionsResult = google.maps.DirectionsResult;

interface Props {
    busRoutes: BusRoute[];
    routeSelection: BusRoute | undefined;
    setRouteSelection: Dispatch<SetStateAction<BusRoute | undefined>>;
    setStartSelection: Dispatch<SetStateAction<BusStop | undefined>>;
    setFinishSelection: Dispatch<SetStateAction<BusStop | undefined>>;
    checked: boolean;
    setChecked: Dispatch<SetStateAction<boolean>>;
    setPrediction: Dispatch<SetStateAction<number | undefined>>;
    setDirections: Dispatch<SetStateAction<DirectionsResult | null>>;
}

const RouteSelectionDropdown = ({
                               busRoutes,
                               routeSelection,
                               setRouteSelection,
                               setStartSelection,
                               setFinishSelection,
                               checked,
                               setChecked,
                               setPrediction,
                               setDirections,
                           }: Props): JSX.Element => {

  const slideHandler = () => {
    setChecked((prev) => !prev);
    resetSelections();
  };

  const toggleDisableHandler = (): boolean => {
    return routeSelection === undefined;
  }

  const resetSelections = () => {
    if (checked) {
      setStartSelection(undefined)
      setFinishSelection(undefined)
      setPrediction(undefined)
      setRouteSelection(undefined)
      setDirections(null)
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
