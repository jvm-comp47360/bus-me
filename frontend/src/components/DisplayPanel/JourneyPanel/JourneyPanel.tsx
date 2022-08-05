import JourneyLeg from './JourneyLeg/JourneyLeg';
import AnalyticsPanel from './AnalyticsPanel/AnalyticsPanel';

import {Box, Grid, Typography} from '@mui/material';
import ArrowDropUpIcon from '@mui/icons-material/ArrowDropUp';

import {useMemo, Dispatch, SetStateAction} from 'react';

import BusStop from '../../../types/BusStop';
import BusRoute from '../../../types/BusRoute';

interface Props {
    startSelection: BusStop,
    departureTime: Date,
    finishSelection: BusStop,
    routeSelection: BusRoute | undefined,
    prediction: number,
    collapseJourneyPanel: Boolean,
    setCollapseJourneyPanel: Dispatch<SetStateAction<Boolean>>,
    directions: google.maps.DirectionsResult | null,
}

const JourneyPanel = ({
    startSelection,
    departureTime,
    finishSelection, 
    routeSelection,
    prediction,
    collapseJourneyPanel,
    setCollapseJourneyPanel, directions}: Props): JSX.Element => {

    const startSelectionMemo: BusStop = useMemo(() => startSelection, [prediction]);
    const finishSelectionMemo: BusStop = useMemo(() => finishSelection, [prediction]);
    const displayValue = collapseJourneyPanel ? 'none' : 'block';

    return <Box 
        sx={{
        backgroundColor: 'white',
        p: 1,
        display: displayValue,
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
                <ArrowDropUpIcon
                    sx={{fontSize: '36px'}}
                    onClick={() => setCollapseJourneyPanel(true)} />
            </Grid>
        </Grid>
        
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
          routeSelection={routeSelection}
          prediction={prediction}
          dateTimeSelection={departureTime}
          directions={directions}
        />
    </Box>
};

export default JourneyPanel;