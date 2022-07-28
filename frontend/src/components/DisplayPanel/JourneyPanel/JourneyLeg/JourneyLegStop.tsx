import BusStop from '../../../../types/BusStop'

import {Grid, Typography} from '@mui/material';

interface Props {
    time: Date,
    stopSelection: BusStop,
}

const JourneyLegStop = ({time, stopSelection}: Props): JSX.Element => {
    const journeyTime: string = `${time.getHours().toString()}:${time.getMinutes().toString()}`
    return <Grid container>
        <Grid 
            item 
            xs={2}
            sx={{
                display: 'flex',
                justifyContent: 'center',
                flexDirection: 'column',
                color: 'black',
            }}>
            <Typography sx={{fontSize: '0.875rem'}}>{journeyTime}</Typography>
        </Grid>
        <Grid item xs={10}>
            <Typography>{stopSelection.name}</Typography> 
        </Grid>
    </Grid>
};

export default JourneyLegStop;