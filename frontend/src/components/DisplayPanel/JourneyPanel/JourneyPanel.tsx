import JourneyLeg from './JourneyLeg/JourneyLeg';
import AnalyticsPanel from './AnalyticsPanel/AnalyticsPanel';

import {Box, Typography} from '@mui/material';

import {Dispatch, SetStateAction, useMemo} from 'react';

import BusStop from '../../../types/BusStop';
import BusRoute from '../../../types/BusRoute';

type DirectionsResult = google.maps.DirectionsResult;

interface Props {
    startSelection: BusStop,
    departureTime: Date,
    finishSelection: BusStop,
    routeSelection: BusRoute | undefined,
    prediction: number,
    predictionList: number[],
    setPredictionList: Dispatch<SetStateAction<number[]>>,
    directions: google.maps.DirectionsResult | null,
    dateTimeSelection: Date;
}

const JourneyPanel = ({
    startSelection,
    departureTime,
    finishSelection, 
    routeSelection,
    prediction, predictionList,
                          setPredictionList, directions, dateTimeSelection}: Props): JSX.Element => {

    const startSelectionMemo: BusStop = useMemo(() => startSelection, [prediction]);
    const finishSelectionMemo: BusStop = useMemo(() => finishSelection, [prediction]);

    return <Box 
        sx={{
        backgroundColor: 'white',
        p: 1,
    }}>
        <Typography 
            variant='h5' 
            sx={{textAlign: 'center'}}>
            Your Journey
        </Typography>
        <JourneyLeg 
            startSelection={startSelectionMemo}
            departureTime={departureTime}
            finishSelection={finishSelectionMemo}
            routeSelection={routeSelection}
            prediction={Math.round(prediction)}
            directions={directions}
        />
        <AnalyticsPanel
          routeSelection={routeSelection}
          startSelection={startSelection}
          finishSelection={finishSelection}
          prediction={prediction}
          predictionList={predictionList}
          setPredictionList={setPredictionList}
          directions={directions}
          dateTimeSelection={dateTimeSelection}
        />
    </Box>
};

export default JourneyPanel;