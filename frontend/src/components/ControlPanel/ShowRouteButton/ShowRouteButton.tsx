// React
import React, {Dispatch, SetStateAction} from 'react';

// Props
import Button from "@mui/material/Button";
import BusStop from "../../../types/BusStop";
type DirectionsResult = google.maps.DirectionsResult;
type DirectionsStatus = google.maps.DirectionsStatus;

interface Props {
    startSelection: BusStop | undefined;
    finishSelection: BusStop | undefined;
    setDirections: Dispatch<SetStateAction<DirectionsResult | null>>;
}

const ShowRouteButton = ({
                               startSelection,
                               finishSelection,
                               setDirections
                            }: Props): JSX.Element => {


    const showRouteClickHandler = () => {
        if (startSelection && finishSelection) {
            const userDirectionsRequest: google.maps.DirectionsRequest = {
                origin: {
                    lat: +startSelection.latitude,
                    lng: +startSelection.longitude
                },
                destination: {
                    lat: +finishSelection.latitude,
                    lng: +finishSelection.longitude,
                },
                travelMode: google.maps.TravelMode.TRANSIT,
                transitOptions: {
                    modes: [google.maps.TransitMode.BUS],
                    routingPreference: google.maps.TransitRoutePreference.LESS_WALKING,
                }
            };
            const directionsServiceCallback = (
                response: DirectionsResult | null,
                status: DirectionsStatus,
            ) => {
                if (response && status === 'OK') { // response was state of directions
                    setDirections(response);
                }
            };
            const service = new google.maps.DirectionsService();
            service.route(userDirectionsRequest, directionsServiceCallback);
        }
    };

    return <>
        <Button
            variant={'contained'}
            onClick={showRouteClickHandler}
            style={{maxWidth: '30%'}}
            sx={{margin: 1}}
        >
            Show Route!
        </Button>
    </>;
};

export default ShowRouteButton;
