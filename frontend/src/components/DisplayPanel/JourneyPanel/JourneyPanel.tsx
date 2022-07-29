import JourneyLeg from './JourneyLeg/JourneyLeg';
import AnalyticsPanel from './AnalyticsPanel/AnalyticsPanel';

import {Box, Typography} from '@mui/material';

import {useMemo} from 'react';

import BusStop from '../../../types/BusStop';
import BusRoute from '../../../types/BusRoute';

interface Props {
    startSelection: BusStop,
    departureTime: Date,
    finishSelection: BusStop,
    routeSelection: BusRoute,
    prediction: number,
}

const JourneyPanel = ({
    startSelection,
    departureTime,
    finishSelection, 
    routeSelection,
    prediction}: Props): JSX.Element => {

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
        />
        <AnalyticsPanel
          startSelection={startSelection}
          finishSelection={finishSelection}
          prediction={prediction}
        />
    </Box>
};

export default JourneyPanel;