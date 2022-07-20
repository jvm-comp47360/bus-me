import {Button} from '@mui/material';
import {Dispatch, SetStateAction} from 'react';
import BusStop from '../../../../../types/BusStop';

interface Props {
    name: "Start" | "Finish",
    setter: Dispatch<SetStateAction<BusStop | undefined>>,
    stop: BusStop
}

const InfoWindowButton = ({name, setter, stop}: Props): JSX.Element => {
    return <Button 
        variant={'contained'}
        onClick={() => setter(stop)}>
        {name} Station
    </Button>
}

export default InfoWindowButton;