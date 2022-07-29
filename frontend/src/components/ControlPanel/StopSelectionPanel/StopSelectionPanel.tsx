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
import PlanJourneyButton from "./PlanJourneyButton/PlanJourneyButton";

type DirectionsResult = google.maps.DirectionsResult;

interface Props {
    busRoutes: BusRoute[];
    routeSelection: BusRoute | undefined;
    startSelection: BusStop | undefined;
    setStartSelection: Dispatch<SetStateAction<BusStop | undefined>>;
    finishSelection: BusStop | undefined;
    setFinishSelection: Dispatch<SetStateAction<BusStop | undefined>>;
    dateTimeSelection: Date | undefined;
    setDateTimeSelection: Dispatch<SetStateAction<Date | undefined>>;
    setPrediction: Dispatch<SetStateAction<number | undefined>>;
    setDirections: Dispatch<SetStateAction<DirectionsResult | null>>;
}

const StopSelectionPanel = ({
                               busRoutes,
                               routeSelection,
                              startSelection,
                               setStartSelection,
                              finishSelection,
                               setFinishSelection,
                               dateTimeSelection,
                               setDateTimeSelection,
                              setPrediction,
                              setDirections,
                           }: Props): JSX.Element => {

    return <Box display={'flex'}
                flexDirection={'row'}
                flexWrap={'wrap'}
                justifyContent={'center'}
                margin={1}>
            <Box
                display={'flex'}
                flexDirection={'column'}
                flexWrap={'wrap'}
                justifyContent={'center'}
                margin={1}
            >
                <BusStopDropdown
                    busRoutes={busRoutes}
                    routeSelection={routeSelection}
                    label={'Start'}
                    selection={startSelection}
                    setSelection={setStartSelection}
                />
                <BusStopDropdown
                    busRoutes={busRoutes}
                    routeSelection={routeSelection}
                    label={'Finish'}
                    selection={finishSelection}
                    setSelection={setFinishSelection}
                />
            </Box>
      <Box
        display={'flex'}
        flexDirection={'column'}
        flexWrap={'wrap'}
        justifyContent={'center'}
        margin={1}
      >
        <DateTimeSelection
          dateTimeSelection={dateTimeSelection}
          setDateTimeSelection={setDateTimeSelection}
        />
      </Box>
      <Box
        display={'flex'}
        flexDirection={'column'}
        flexWrap={'wrap'}
        justifyContent={'center'}
        margin={1}
      >
        <PlanJourneyButton
          routeSelection={routeSelection}
          startSelection={startSelection}
          finishSelection={finishSelection}
          dateTimeSelection={dateTimeSelection}
          setPrediction={setPrediction}
          setDirections={setDirections}
        />
      </Box>
    </Box>;
};

export default StopSelectionPanel;
