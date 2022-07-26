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
    busStops: BusStop[];
    routeSelection: BusRoute | undefined;
    startSelection: BusStop | undefined;
    setStartSelection: Dispatch<SetStateAction<BusStop | undefined>>;
    finishSelection: BusStop | undefined;
    setFinishSelection: Dispatch<SetStateAction<BusStop | undefined>>;
    dateTimeSelection: Date | undefined;
    setDateTimeSelection: Dispatch<SetStateAction<Date | undefined>>;
    multiRoute: boolean;
}

const StopSelectionPanel = ({
                               busRoutes,
                              busStops,
                               routeSelection,
                              startSelection,
                               setStartSelection,
                              finishSelection,
                               setFinishSelection,
                               dateTimeSelection,
                               setDateTimeSelection,
                              multiRoute,
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
                    busStops={busStops}
                    routeSelection={routeSelection}
                    label={'Start'}
                    selection={startSelection}
                    setSelection={setStartSelection}
                    multiRoute={multiRoute}
                />
                <BusStopDropdown
                    busRoutes={busRoutes}
                    busStops={busStops}
                    routeSelection={routeSelection}
                    label={'Finish'}
                    selection={finishSelection}
                    setSelection={setFinishSelection}
                    multiRoute={multiRoute}
                />
                <DateTimeSelection
                    dateTimeSelection={dateTimeSelection}
                    setDateTimeSelection={setDateTimeSelection}
                />
            </Box>
    </>;
};

export default StopSelectionPanel;
