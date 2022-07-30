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
    busStops: BusStop[];
    routeSelection: BusRoute | undefined;
    startSelection: BusStop | undefined;
    setStartSelection: Dispatch<SetStateAction<BusStop | undefined>>;
    finishSelection: BusStop | undefined;
    setFinishSelection: Dispatch<SetStateAction<BusStop | undefined>>;
    dateTimeSelection: Date;
    setDateTimeSelection: Dispatch<SetStateAction<Date>>;
    setPrediction: Dispatch<SetStateAction<number | undefined>>;
    setDirections: Dispatch<SetStateAction<DirectionsResult | null>>;
    multiRoute: boolean;
    setPredictionList: Dispatch<SetStateAction<number[]>>;
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
                              setPrediction,
                              setDirections,
                              multiRoute,
                              setPredictionList,
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
              <Box m={0.5}>
                <BusStopDropdown
                    busRoutes={busRoutes}
                    busStops={busStops}
                    routeSelection={routeSelection}
                    label={'Start'}
                    selection={startSelection}
                    setSelection={setStartSelection}
                    multiRoute={multiRoute}
                />
              </Box>
              <Box m={0.5}>
                <BusStopDropdown
                    busRoutes={busRoutes}
                    busStops={busStops}
                    routeSelection={routeSelection}
                    label={'Finish'}
                    selection={finishSelection}
                    setSelection={setFinishSelection}
                    multiRoute={multiRoute}
                />
              </Box>
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
          multiRoute={multiRoute}
          setPredictionList={setPredictionList}
        />
      </Box>
    </Box>;
};

export default StopSelectionPanel;
