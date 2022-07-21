// React
import React, {Dispatch, SetStateAction} from 'react';

// Material UI
import {Autocomplete, AutocompleteRenderInputParams, Box, TextField, TextFieldProps}
  from '@mui/material';

// Props
import BusRouteDropdown from './BusRouteDropdown/BusRouteDropdown';
import BusRoute from '../../../types/BusRoute';

interface Props {
    busRoutes: BusRoute[];
    setRouteSelection: Dispatch<SetStateAction<BusRoute | undefined>>;
}

const RouteSelectionDropdown = ({
                               busRoutes,
                               setRouteSelection,
                           }: Props): JSX.Element => {

    return <>
      <Box
        display={'flex'}
        flexDirection={'row'}
        flexWrap={'wrap'}
        justifyContent={'center'}
        margin={1}
      >
        <BusRouteDropdown
            busRoutes={busRoutes}
            setRouteSelection={setRouteSelection}
        />
      </Box>
    </>;
};

export default RouteSelectionDropdown;
