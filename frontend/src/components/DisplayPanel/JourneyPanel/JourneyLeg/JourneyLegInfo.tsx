import BusRoute from '../../../../types/BusRoute';

import {Box, Grid, Typography} from '@mui/material';

interface Props {
    routeSelection: BusRoute,
    prediction: number,
}

const JourneyLegInfo = ({routeSelection, prediction}: Props): JSX.Element => {
    const getPredictionString = (prediction: number): string => {
        if (prediction < 60) return `${prediction}m`;
        else if (prediction < 120) {
            if (prediction === 60) return '1h';
            else return `1h${prediction - 60}m`;
        } 
        else {
            if (prediction === 120) return '2h';
            else return `2h${prediction - 120}m`;
        }
    };
    
    return <Grid container>
        <Grid 
            item 
            xs={2}
            sx={{
                display: 'flex',
                justifyContent: 'center',
                alignItems: 'center',
        }}>
            <Typography sx={{
                fontSize: '0.75rem',
                color: 'gray',
            }}>{getPredictionString(prediction)}</Typography>
        </Grid>
        <Grid 
            item 
            xs={10}
        >
        <Box sx={{
            minWidth: '10px',
            ml: 2,
            backgroundColor: 'red',
            color: 'white',
            width: '10%',
            textAlign: 'center',
            borderRadius: '15%',
        }}>
            {routeSelection.name}
        </Box>
        </Grid>
    </Grid>
};

export default JourneyLegInfo;