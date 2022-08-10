import {Button} from '@mui/material';
import {Dispatch, SetStateAction} from 'react';
import BusStop from '../../../../../types/BusStop';
import BusRoute from '../../../../../types/BusRoute';

interface Props {
    name: "Start" | "Finish";
    setStopSelection: Dispatch<SetStateAction<BusStop | undefined>>;
    stop: BusStop;
    existingSelection: BusStop | undefined;
    routeSelection: BusRoute | undefined;
    multiRoute: boolean;
    setSelectedMarker: Dispatch<SetStateAction<google.maps.LatLng | null>>;
}

const InfoWindowButton = ({
    name, 
    setStopSelection, 
    stop, 
    existingSelection,
    routeSelection,
    multiRoute,
    setSelectedMarker,
}: Props): JSX.Element => {
    const submitDisableHandler = (): boolean => {
        if (name === "Finish") {
            return existingSelection === undefined || existingSelection.number === stop.number;
        } 
        else {
            if (existingSelection === undefined) return false;
            else return existingSelection.number === stop.number; 
        } 
    };

    const clickHandler = (): void => {
        setStopSelection(stop);
        setSelectedMarker(null);
    }

    return (
        <Button 
        variant={'contained'}
        onClick={clickHandler}
        disabled={(multiRoute) ? false : (routeSelection === undefined) ? true : submitDisableHandler()}
        sx={{
            width: '140px',
            padding: '4px',
        }}>
        {name} Station
        </Button>
    )
}

export default InfoWindowButton;