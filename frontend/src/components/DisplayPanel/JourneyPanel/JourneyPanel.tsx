import JourneyLeg from './JourneyLeg/JourneyLeg';
import AnalyticsPanel from './AnalyticsPanel/AnalyticsPanel';

import {Box, Typography} from '@mui/material';

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
    return <Box 
        sx={{
        backgroundColor: 'white',
        p: 1,
    }}>
        <Typography variant='h5'>Your Journey</Typography>
        <JourneyLeg 
            startSelection={startSelection}
            departureTime={departureTime}
            finishSelection={finishSelection}
            routeSelection={routeSelection}
            prediction={Math.round(prediction)}
        />
        <AnalyticsPanel />
    </Box>
};

export default JourneyPanel;