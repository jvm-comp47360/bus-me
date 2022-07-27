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
    multiRoute: boolean;
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

const BusMeButton = ({routeSelection,
                         startSelection,
                         finishSelection,
                         dateTimeSelection,
                        setPrediction,
                        multiRoute,
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

    const handleMultiRouteApiCall = () => {
        if (dateTimeSelection === undefined ||
          startSelection === undefined ||
          finishSelection === undefined
        ) {
            return;
        }

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
            if (response && status === 'OK' ) { // response was state of directions
                const journeyStages: google.maps.DirectionsStep[] = response.routes[0].legs[0].steps;

                const urlsToFetch: string[] = [];
                let googleMapsPredictions = 0;

                journeyStages.map((journeyStage) => {
                    if (journeyStage.travel_mode === 'TRANSIT') {
                        const transitDetails: google.maps.TransitDetails | undefined = journeyStage.transit;

                        if (transitDetails && stationPickles.indexOf(transitDetails.line.short_name) !== -1) {
                            const route: string = transitDetails.line.short_name;
                            const num_stop_segments: number = transitDetails.num_stops
                            const time: string = getSeconds(dateTimeSelection).toString()

                            urlsToFetch.push(`http://ipa-002.ucd.ie/api/prediction/${route}/${num_stop_segments}/${time}`)
                        } else {
                            const predictionInSeconds: google.maps.Duration | undefined = journeyStage.duration;
                            if (predictionInSeconds) {
                                const predictionInMinutes: number = Math.round((predictionInSeconds.value / 60 * 10) / 10)
                                console.log("Prediction in minutes:");
                                console.log(predictionInMinutes);
                                googleMapsPredictions += predictionInMinutes;
                            }
                        }
                    }
                })

                Promise.all(urlsToFetch.map((url) => fetch(url)))
                  .then((responses) =>
                    responses.map((response) => response.json() as Promise<Prediction>))
                  .then((predictions) => {
                      Promise.all(predictions).then((predictions) => {
                          let totalPredictions = 0
                          predictions.map((prediction) => {
                              console.log("Prediction from backend:")
                              console.log(Math.round(prediction.prediction * 10) / 10);
                              totalPredictions += Math.round(prediction.prediction * 10) / 10;
                          })
                          totalPredictions += googleMapsPredictions;
                          setPrediction(totalPredictions);
                      })
                  })
            }
        };
        const service = new google.maps.DirectionsService();
        service.route(userDirectionsRequest, directionsServiceCallback);
    }

    const handleSingleRouteApiCall = () => {
        if (routeSelection === undefined || dateTimeSelection === undefined ||
          startSelection === undefined || finishSelection === undefined) {
            return;
        }
        const route: string = routeSelection.name

        if (stationPickles.indexOf(route) === -1) {
            alert("We don't have the data for this yet");
            return
        }

        const num_stops_segment = getNumStopsSegment(routeSelection, startSelection, finishSelection);
        const time: string = getSeconds(dateTimeSelection).toString()

        fetch(`http://ipa-002.ucd.ie/api/prediction/${route}/${num_stops_segment}/${time}`)
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

// This is where the POST API call will go.
    const submitClickHandler = () => {
        if (multiRoute) {
            handleMultiRouteApiCall()
        } else {
            handleSingleRouteApiCall();
        }
    };

    // Submit Button helper functions
    const submitDisableHandler = (): boolean => {
        if (multiRoute) {
            return startSelection === undefined ||
            finishSelection === undefined ||
            startSelection === finishSelection;
        } else {
            return routeSelection === undefined ||
              startSelection === undefined ||
              finishSelection === undefined ||
              startSelection === finishSelection;
        }
    }

    return <>
        <Button
            variant={'contained'}
            onClick={submitClickHandler}
            disabled={submitDisableHandler()}
            style={{maxWidth: '30%'}}
            sx={{margin: 1}}
        >
            BusMe!
        </Button>
    </>;
};

export default BusMeButton;
