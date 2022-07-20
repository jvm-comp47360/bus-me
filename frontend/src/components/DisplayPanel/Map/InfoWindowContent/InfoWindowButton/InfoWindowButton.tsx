import {Button} from '@mui/material';

interface Props {
    name: "Start" | "Finish",
}

const InfoWindowButton = ({name}: Props): JSX.Element => {
    return <Button variant={'contained'}>{name} Station</Button>
}

export default InfoWindowButton;