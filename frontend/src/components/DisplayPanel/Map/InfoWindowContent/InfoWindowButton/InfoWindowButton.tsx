import {Button} from '@mui/material';
import {Dispatch, SetStateAction} from 'react';
import BusStop from '../../../../../types/BusStop';

interface Props {
    name: "Start" | "Finish",
    setter: Dispatch<SetStateAction<BusStop | undefined>>
}

const InfoWindowButton = ({name, setter}: Props): JSX.Element => {
    return <Button variant={'contained'}>{name} Station</Button>
}

export default InfoWindowButton;