import {Button,Grid,Typography} from '@mui/material';
import InfoWindowButton from './InfoWindowButton/InfoWindowButton';
import BusStop from '../../../../types/BusStop';

interface Props {
    stop: BusStop,
}

const InfoWindowContent = ({stop}:Props): JSX.Element => {
    return <Grid 
            container
            direction={'column'}
            sx={{
                height: '175px',
                width: '300px',
                justifyContent: 'space-between',
            }}>
        <Grid item>
            <Typography variant={"h6"}>{stop.name} (Stop {stop.number})</Typography>
        </Grid>
        <Grid 
            item 
            container
            sx={{
                justifyContent: 'space-evenly',
            }}>
            <Grid item>
                <InfoWindowButton name={"Start"}/>
            </Grid>
            <Grid item>
                <InfoWindowButton name={"Finish"}/>
            </Grid>
        </Grid>
    </Grid>
}

export default InfoWindowContent;