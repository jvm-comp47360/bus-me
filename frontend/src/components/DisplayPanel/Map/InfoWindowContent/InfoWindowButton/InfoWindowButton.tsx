import {Button} from '@mui/material';
import {Dispatch, SetStateAction} from 'react';
import BusStop from '../../../../../types/BusStop';

interface Props {
    name: "Start" | "Finish",
    setter: Dispatch<SetStateAction<BusStop | undefined>>,
    stop: BusStop,
    startSelection?: BusStop | undefined
}

const InfoWindowButton = ({name, setter, stop, startSelection}: Props): JSX.Element => {
    const submitDisableHandler = (): boolean => {
        return startSelection === undefined ||
        startSelection.number === stop.number;
    }
    
    return (
        (name === "Finish") ?
        <Button 
        variant={'contained'}
        onClick={() => setter(stop)}
        disabled={submitDisableHandler()}>
        {name} Station
        </Button> :
        <Button 
        variant={'contained'}
        onClick={() => setter(stop)}
        >
        {name} Station
        </Button>
    )
}

export default InfoWindowButton;