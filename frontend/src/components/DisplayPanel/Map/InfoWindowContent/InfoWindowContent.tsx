import {Grid,Typography} from '@mui/material';
import InfoWindowButton from './InfoWindowButton/InfoWindowButton';
import {Dispatch, SetStateAction} from 'react';
import BusStop from '../../../../types/BusStop';

interface Props {
    stop: BusStop,
    setStartSelection: Dispatch<SetStateAction<BusStop | undefined>>
    setFinishSelection: Dispatch<SetStateAction<BusStop | undefined>>
}

const InfoWindowContent = 
({stop, setStartSelection, setFinishSelection}:Props): JSX.Element => {
    return (
    <Grid 
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
                <InfoWindowButton 
                    name={"Start"}
                    setter={setStartSelection}/>
            </Grid>
            <Grid item>
                <InfoWindowButton 
                    name={"Finish"}
                    setter={setFinishSelection}/>
            </Grid>
        </Grid>
    </Grid>
    )
}

export default InfoWindowContent;