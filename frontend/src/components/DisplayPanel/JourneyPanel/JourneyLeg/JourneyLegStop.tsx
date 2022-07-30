import BusStop from '../../../../types/BusStop'

import {Grid, Typography} from '@mui/material';

interface Props {
    time: Date,
    stopSelection: BusStop | string,
}

const JourneyLegStop = ({time, stopSelection}: Props): JSX.Element => {
    const journeyHours: string = time.getHours().toLocaleString('en-US', {minimumIntegerDigits: 2});
    const journeyMinutes: string = time.getMinutes().toLocaleString('en-US', {minimumIntegerDigits: 2});
    const journeyTime: string = `${journeyHours}:${journeyMinutes}`;
    return <Grid 
        item
        container>
        <Grid 
            item 
            xs={2}
            sx={{
                display: 'flex',
                justifyContent: 'center',
                flexDirection: 'column',
                color: 'black',
            }}>
            <Typography sx={{
                fontSize: '0.875rem',
                height: '83%',
            }}>{journeyTime}</Typography>
        </Grid>
        <Grid item xs={10}>
            <Typography>{(typeof (stopSelection) === 'string') ? stopSelection : stopSelection.name}</Typography>
        </Grid>
    </Grid>
};

export default JourneyLegStop;