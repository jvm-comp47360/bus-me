// React
import React, {Dispatch, SetStateAction, useState} from 'react';

// Props
import Button from '@mui/material/Button';
import BusRoute from '../../../types/BusRoute';
import BusStop from '../../../types/BusStop';

type DirectionsResult = google.maps.DirectionsResult;
type DirectionsStatus = google.maps.DirectionsStatus;

interface Props {
    routeSelection: BusRoute | undefined;
    startSelection: BusStop | undefined;
    finishSelection: BusStop | undefined;
    dateTimeSelection: Date | undefined;
    setPrediction: Dispatch<SetStateAction<number | undefined>>;
    setDirections: Dispatch<SetStateAction<DirectionsResult | null>>;
}

const stationPickles = ['1', '4', '7', '7A', '7B', '7D',
    '9', '11', '13', '14', '15', '15A', '15B', '15D', '16',
    '16D', '26', '27', '27A', '27B', '27X', '32X', '33',
    '33D', '33E', '33X', '37', '38', '38A', '38B', '38D',
    '39', '39A', '39X', '40', '40B', '40D', '40E', '41',
    '41B', '41C', '41D', '41X', '42', '43', '44', '44B',
    '46A', '46E', '47', '49', '51D', '53', '54A', '56A',
    '61', '65', '65B', '68', '68A', '69', '69X', '70',
    '77A', '77X', '79', '79A', '83', '83A', '84', '84A',
    '84X', '116', '118', '120', '122', '123', '130',
    '140', '142', '145', '150', '151'];

type Prediction = {
    prediction: number;
}

const PlanJourneyButton = ({routeSelection,
                         startSelection,
                         finishSelection,
                         dateTimeSelection,
                        setPrediction,
                        setDirections,
                    }: Props): JSX.Element => {
    const getSeconds = (date: Date) => {
        const minutes = date.getMinutes();
        const hours = date.getHours();
        return ((60 * hours) + minutes) * 60;
    }

    const getNumStopsSegment = (routeSelection: BusRoute, startSelection: BusStop, finishSelection: BusStop): number => {
        const start_stop_number = routeSelection.bus_stops.indexOf(startSelection)
        const finish_stop_number = routeSelection.bus_stops.indexOf(finishSelection)
        return Math.abs(finish_stop_number - start_stop_number);
    }

    const checkRouteAndSetPrediction =(directions: google.maps.DirectionsResult) => {
        if (routeSelection === undefined || dateTimeSelection === undefined ||
          startSelection === undefined || finishSelection === undefined) {
            return;
        }

        if (stationPickles.indexOf(routeSelection.name) === -1) {
            setPredictionFromGoogleMaps(directions);
        } else {
            setPredictionFromBackend(routeSelection, startSelection, finishSelection, dateTimeSelection);
        }
    }

    const setDirectionsAndPrediction = (startSelection: BusStop, finishSelection: BusStop) => {
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
        service.route(userDirectionsRequest, directionsServiceCallback).then((directions: DirectionsResult) => {
              checkRouteAndSetPrediction(directions);
          }
        );
    }

    const setPredictionFromBackend = (routeSelection: BusRoute,
                                      startSelection: BusStop,
                                      finishSelection: BusStop,
                                      dateTimeSelection: Date) => {
        const num_stops_segment = getNumStopsSegment(routeSelection, startSelection, finishSelection);
        const time: string = getSeconds(dateTimeSelection).toString()

        fetch(`http://ipa-002.ucd.ie/api/prediction/${routeSelection.name}/${num_stops_segment}/${time}`)
          .then((response) => {
              if (response.ok) {
                  return response.json() as Promise<Prediction>;
              } else {
                  throw new Error();
              }
          })
          .then((data) => {
              const prediction: number = Math.round(data['prediction'] * 10) / 10
              setPrediction(prediction)
          })
          .catch((error) => console.log(error));
    }

    const setPredictionFromGoogleMaps = (directions: google.maps.DirectionsResult) => {
        const prediction: google.maps.Duration | undefined = directions.routes[0].legs[0].duration;
        if (prediction) {
            const predictionInMinutes = Math.round(prediction.value / 60 * 10) / 10;
            setPrediction(predictionInMinutes);
        } else {
            alert('Something has gone wrong with the Google Maps API');
        }
    }

// This is where the POST API call will go.
    const submitClickHandler = () => {
        if (routeSelection === undefined || dateTimeSelection === undefined ||
          startSelection === undefined || finishSelection === undefined) {
            return;
        }
        setDirectionsAndPrediction(startSelection, finishSelection);
    };

    // Submit Button helper functions
    const submitDisableHandler = (): boolean =>
        routeSelection === undefined ||
        startSelection === undefined ||
        finishSelection === undefined ||
        startSelection === finishSelection;

    return <>
        <Button
            variant={'contained'}
            onClick={submitClickHandler}
            disabled={submitDisableHandler()}
            style={{maxWidth: '30%'}}
            sx={{margin: 1}}
        >
            Plan Journey
        </Button>
    </>;
};

export default PlanJourneyButton;
