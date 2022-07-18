// React
import React, {Dispatch, SetStateAction} from 'react';

// Material UI
import {Autocomplete, AutocompleteRenderInputParams, Box, TextField, TextFieldProps}
    from '@mui/material';

// Props
import BusStop from '../../../types/BusStop';
import BusRoute from '../../../types/BusRoute';

// Components
import BusStopDropdown from './BusStopsDropdown/BusStopDropdown';
import DateTimeSelection from './DateTimeSelection/DateTimeSelection';

interface Props {
    busRoutes: BusRoute[];
    routeSelection: BusRoute | undefined;
    setStartSelection: Dispatch<SetStateAction<BusStop | undefined>>;
    setFinishSelection: Dispatch<SetStateAction<BusStop | undefined>>;
    dateTimeSelection: Date | undefined;
    setDateTimeSelection: Dispatch<SetStateAction<Date | undefined>>;
}

const StopSelectionPanel = ({
                               busRoutes,
                               routeSelection,
                               setStartSelection,
                               setFinishSelection,
                               dateTimeSelection,
                               setDateTimeSelection,
                           }: Props): JSX.Element => {

    return <>
            <Box
                display={'flex'}
                flexDirection={'row'}
                flexWrap={'wrap'}
                justifyContent={'center'}
                margin={1}
            >
                <BusStopDropdown
                    busRoutes={busRoutes}
                    routeSelection={routeSelection}
                    label={'Start'}
                    setSelection={setStartSelection}
                />
                <BusStopDropdown
                    busRoutes={busRoutes}
                    routeSelection={routeSelection}
                    label={'Finish'}
                    setSelection={setFinishSelection}
                />
                <DateTimeSelection
                    dateTimeSelection={dateTimeSelection}
                    setDateTimeSelection={setDateTimeSelection}
                />
            </Box>
    </>;
};

export default StopSelectionPanel;
