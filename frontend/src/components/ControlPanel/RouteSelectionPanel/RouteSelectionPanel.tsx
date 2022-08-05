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
    setPrediction: Dispatch<SetStateAction<number | undefined>>;
    setDirections: Dispatch<SetStateAction<DirectionsResult | null>>;
}

const RouteSelectionDropdown = ({
                               busRoutes,
                               routeSelection,
                               setRouteSelection,
                               setStartSelection,
                               setFinishSelection,
                               setPrediction,
                               setDirections,
                           }: Props): JSX.Element => {

  const toggleDisableHandler = (): boolean => {
    return routeSelection === undefined;
  }

  const resetSelections = () => {
      setStartSelection(undefined)
      setFinishSelection(undefined)
      setPrediction(undefined)
      setRouteSelection(undefined)
      setDirections(null)
    }
    return <Box
      display={'flex'}
      flexDirection={'column'}
      flexWrap={'wrap'}
      justifyContent={'center'}
      margin={1}
      width={400}
    >
      {!routeSelection ? (
        <Slide
          direction={'up'}
          in={!routeSelection}
          mountOnEnter
          unmountOnExit
        >
          <div>
            <BusRouteDropdown
              busRoutes={busRoutes}
              routeSelection={routeSelection}
              setRouteSelection={setRouteSelection}
            />
          </div>
        </Slide>
      ) : null} 
      {(routeSelection) ? 
      <Slide
          direction={'up'}
          in={Boolean(routeSelection)}
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
                onClick={resetSelections}
                disabled={toggleDisableHandler()}
              >
                Select Route
              </Button>
            </Box>
          </div>
        </Slide>
      : null}
      </Box>
};

export default RouteSelectionDropdown;
