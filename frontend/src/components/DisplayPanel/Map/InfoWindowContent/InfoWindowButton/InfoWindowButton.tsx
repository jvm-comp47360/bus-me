import {Button} from '@mui/material';
import {Dispatch, SetStateAction} from 'react';
import BusStop from '../../../../../types/BusStop';

interface Props {
    name: "Start" | "Finish",
    setStopSelection: Dispatch<SetStateAction<BusStop | undefined>>,
    stop: BusStop,
    existingSelection: BusStop | undefined
}

const InfoWindowButton = ({name, setStopSelection, stop, existingSelection}: Props): JSX.Element => {
    const submitDisableHandler = (): boolean => {
        if (name === "Finish") {
            return existingSelection === undefined || existingSelection.number === stop.number;
        } 
        else {
            if (existingSelection === undefined) return false;
            else return existingSelection.number === stop.number; 
        } 
    };

    return (
        <Button 
        variant={'contained'}
        onClick={() => setStopSelection(stop)}
        disabled={submitDisableHandler()}>
        {name} Station
        </Button>
    )
}

export default InfoWindowButton;