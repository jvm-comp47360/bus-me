import {Grid,Typography} from '@mui/material';
import InfoWindowButton from './InfoWindowButton/InfoWindowButton';
import {Dispatch, SetStateAction} from 'react';
import BusStop from '../../../../types/BusStop';

interface Props {
    stop: BusStop,
    setStartSelection: Dispatch<SetStateAction<BusStop | undefined>>
    startSelection: BusStop | undefined,
    finishSelection: BusStop | undefined,
    setFinishSelection: Dispatch<SetStateAction<BusStop | undefined>>
}

const InfoWindowContent =({stop, 
    setStartSelection, 
    startSelection, 
    finishSelection,
    setFinishSelection}:Props): JSX.Element => {
    return (
    <Grid 
        container
        direction={'column'}
        sx={{
            height: '250px',
            width: '175px',
            justifyContent: 'space-between',
        }}>
        <Grid item>
            <Typography 
                sx={{
                fontSize: '0.75rem',
                textAlign: 'right'
            }}>
                Stop {stop.number}
            </Typography>
            <Typography 
                sx={{
                borderBottom: 1,
                fontSize: '1rem',
                textAlign: 'center',
            }}>
                {stop.name}
            </Typography>
        </Grid>
        <Grid 
            item 
            container
            sx={{
                justifyContent: 'space-evenly',
                alignItems: 'center',
                flexDirection: 'column',
                height: '90px',
                borderTop: 1,
            }}>
            <Grid item>
                <InfoWindowButton 
                    name={"Start"}
                    setStopSelection={setStartSelection}
                    stop={stop}
                    existingSelection={finishSelection}
                    />
            </Grid>
            <Grid item>
                <InfoWindowButton 
                    name={"Finish"}
                    setStopSelection={setFinishSelection}
                    stop={stop}
                    existingSelection={startSelection}/>
            </Grid>
        </Grid>
    </Grid>
    )
}

export default InfoWindowContent;