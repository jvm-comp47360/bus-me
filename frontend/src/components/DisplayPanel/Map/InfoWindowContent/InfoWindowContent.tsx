import {Box,Grid,Typography} from '@mui/material';
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
    
    const testStops = [
        {
            'route' : '39A', 
            'terminus': 'UCD Belfield'
        },
        {
            'route' : '145', 
            'terminus': 'Dun Laoghire'
        },
        {
            'route' : '155', 
            'terminus': 'Bray'
        },
        {
            'route' : '39A', 
            'terminus': 'UCD Belfield'
        },
        {
            'route' : '145', 
            'terminus': 'Dun Laoghire'
        },
        {
            'route' : '155', 
            'terminus': 'Bray'
        },  
    ];

    const getRouteDescription = (route: string, terminus: string): string => `${route} to ${terminus}`;

    const getBackgroundColour = (stopIndex: number): string => {
        const colourArray: string[] = ["red", "orange", "blue", "violet", "green"];
        const modValue: number = stopIndex % colourArray.length;
        return colourArray[modValue]
    }

    const overflowYValue = (testStops.length > 3) ? 'scroll': 'inherit';
    
    return (
    <Grid 
        container
        direction={'column'}
        sx={{
            width: '175px',
            justifyContent: 'space-between',
        }}>
        <Grid item sx={{mb: '4px'}}>
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
        <Grid item sx={{minHeight: '75px'}}>
            <Box sx={{
                overflowY: overflowYValue, 
                maxHeight: '100px'
            }}>
                {testStops.map(stop => (
                    <Typography sx={{
                        color: 'white',
                        fontSize: '0.9rem', 
                        border: 1, 
                        p: '2px',
                        borderRadius: '3px',
                        mb: '2px',
                        backgroundColor: getBackgroundColour(testStops.indexOf(stop)),
                    }}>{getRouteDescription(stop.route, stop.terminus)}</Typography>
                )
                )}
            </Box>
        </Grid>
        <Grid 
            item 
            container
            sx={{
                justifyContent: 'space-evenly',
                alignItems: 'center',
                flexDirection: 'column',
                borderTop: 1,
                p: '4px',
                mt: '4px',
            }}>
            <Grid item sx={{p: '2px'}}>
                <InfoWindowButton 
                    name={"Start"}
                    setStopSelection={setStartSelection}
                    stop={stop}
                    existingSelection={finishSelection}
                    />
            </Grid>
            <Grid item sx={{p: '2px'}}>
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