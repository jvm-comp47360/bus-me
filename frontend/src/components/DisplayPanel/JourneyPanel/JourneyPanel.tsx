import JourneyLeg from './JourneyLeg/JourneyLeg';
import AnalyticsPanel from './AnalyticsPanel/AnalyticsPanel';

import {Box, Grid, Typography} from '@mui/material';
import RemoveCircleOutlineIcon from '@mui/icons-material/RemoveCircleOutline';

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
        <Grid container>
            <Grid item xs={10}>
                <Typography 
                    variant='h5' 
                    sx={{textAlign: 'center'}}>
                    Your Journey
                </Typography>
            </Grid>
            <Grid item xs={2}>
                <RemoveCircleOutlineIcon />
            </Grid>
        </Grid>
        
        <JourneyLeg 
            startSelection={startSelectionMemo}
            departureTime={departureTime}
            finishSelection={finishSelectionMemo}
            routeSelection={routeSelection}
            prediction={Math.round(prediction)}
        />
        <AnalyticsPanel />
    </Box>
};

export default JourneyPanel;