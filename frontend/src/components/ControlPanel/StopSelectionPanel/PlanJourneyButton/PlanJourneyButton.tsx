// React
import {Dispatch, SetStateAction} from 'react';

// Props
import Button from '@mui/material/Button';
import BusRoute from '../../../../types/BusRoute';
import BusStop from '../../../../types/BusStop';

type DirectionsResult = google.maps.DirectionsResult;
type DirectionsStatus = google.maps.DirectionsStatus;

interface Props {
    routeSelection: BusRoute | undefined;
    startSelection: BusStop | undefined;
    finishSelection: BusStop | undefined;
    dateTimeSelection: Date | undefined;
    setDateTimeSelection: Dispatch<SetStateAction<Date | undefined>>;
    setPrediction: Dispatch<SetStateAction<number | undefined>>;
    setDirections: Dispatch<SetStateAction<DirectionsResult | null>>;
    arrivalIsSelected: boolean;
    multiRoute: boolean;
    setPredictionStages: Dispatch<SetStateAction<number[]>>
}

type Prediction = {
    prediction: number;
}

const stationPickles = ['68', '14', '77A', '39', '16', '40D',
  '27B', '142', '83', '130', '15', '46A', '33', '7', '39A',
  '1', '41', '59', '9', '40', '84', '53', '185', '151', '13',
  '15B', '65B', '61', '140', '123', '79A', '38A', '69', '44',
  '42', '184', '238', '145', '27A', '17', '27X', '122', '54A',
  '150', '56A', '37', '27', '15A', '65', '47', '76', '79', '83A',
  '63', '4', '120', '41C', '70', '84A', '220', '32X', '68A', '84X',
  '38', '102', '270', '33X', '75', '26', '49', '111', '18', '11',
  '114', '44B', '7A', '43', '104', '33D', '39X', '41B', '7D', '46E',
  '118', '51D', '15D', '38D', '40B', '38B', '236', '7B', '41X',
  '40E', '161', '69X', '116', '77X', '16D', '33E', '41D'];

const PlanJourneyButton = ({routeSelection,
  startSelection,
  finishSelection,
  dateTimeSelection,
  setDateTimeSelection,
  setPrediction,
  setDirections,
  arrivalIsSelected,
  multiRoute,
  setPredictionStages,
}: Props): JSX.Element => {
  const getSeconds = (date: Date) => {
    const minutes = date.getMinutes();
    const hours = date.getHours();
    return ((60 * hours) + minutes) * 60;
  };

  const getNumStopsSegment = (
      routeSelection: BusRoute,
      startSelection: BusStop,
      finishSelection: BusStop,
  ): number => {
    // Get the number of stops between the selected stops.
    const startStopNumber =
        routeSelection.bus_stops.indexOf(startSelection);
    const finishStopNumber =
        routeSelection.bus_stops.indexOf(finishSelection);
    return Math.abs(finishStopNumber - startStopNumber);
  };

  const checkRouteAndSetPrediction =
    (directions: google.maps.DirectionsResult) => {
      if (routeSelection === undefined || dateTimeSelection === undefined ||
          startSelection === undefined || finishSelection === undefined) {
        return;
      } else if (stationPickles.indexOf(
          routeSelection.name.split(' ')[0],
      ) === -1) {
        setPredictionFromGoogleMaps(directions);
      } else {
        setPredictionFromBackend(
            routeSelection,
            startSelection,
            finishSelection,
            dateTimeSelection,
        );
      }
    };

  const setDirectionsAndPrediction = (
      startSelection: BusStop,
      finishSelection: BusStop,
  ) => {
    // Create Google Maps prediction request and call make predictions
    // within Promise
    const userDirectionsRequest: google.maps.DirectionsRequest = {
      origin: {
        lat: +startSelection.latitude,
        lng: +startSelection.longitude,
      },
      destination: {
        lat: +finishSelection.latitude,
        lng: +finishSelection.longitude,
      },
      travelMode: google.maps.TravelMode.TRANSIT,
      transitOptions: {
        departureTime: (!arrivalIsSelected) ? dateTimeSelection : undefined,
        arrivalTime: (arrivalIsSelected) ? dateTimeSelection : undefined,
        modes: [google.maps.TransitMode.BUS],
        routingPreference: google.maps.TransitRoutePreference.LESS_WALKING,
      },
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
    service.route(userDirectionsRequest, directionsServiceCallback)
        .then((directions: DirectionsResult) => {
          if (multiRoute) {
            setMultiRoutePrediction(directions);
          } else {
            checkRouteAndSetPrediction(directions);
          }
        },
        );
  };

  const setPredictionFromBackend = (routeSelection: BusRoute,
      startSelection: BusStop,
      finishSelection: BusStop,
      dateTimeSelection: Date) => {
    const numStopsSegment =
      getNumStopsSegment(routeSelection, startSelection, finishSelection);
    const time: string = getSeconds(dateTimeSelection).toString();
    // Fetch from backend API and set to prediction
    fetch(`https://ipa-002.ucd.ie/api/prediction/${routeSelection.name.split(' ')[0]}/${numStopsSegment}/${time}`)
        .then((response) => {
          if (response.ok) {
            return response.json() as Promise<Prediction>;
          } else {
            throw new Error();
          }
        })
        .then((data) => {
          const prediction: number = Math.round(data['prediction'] * 10) / 10;
          setPrediction(prediction);
        })
        .catch((error) => console.log(error));
  };

  const setPredictionFromGoogleMaps =
    (directions: google.maps.DirectionsResult) => {
      // Get prediction from Google Maps if we don't have the
      // model for the relevant station.
      const prediction: google.maps.Duration | undefined =
      directions.routes[0].legs[0].duration;
      if (prediction) {
        const predictionInMinutes = Math.round(prediction.value / 60 * 10) / 10;
        setPrediction(predictionInMinutes);
      } else {
        alert('Something has gone wrong with the Google Maps API');
      }
    };

  const setMultiRoutePrediction =
    (directions: google.maps.DirectionsResult) => {
      if (!dateTimeSelection) {
        return;
      }

      const journeyStages: google.maps.DirectionsStep[] | undefined =
      directions.routes[0].legs[0].steps;

      // These are all the URLs we need to fetch from the backend.
      const urlsToFetch: string[] = [];

      // This is an array that will contain
      // a prediction for each leg of the journey.
      const predictionStages: number[] = [];

      // Total time predicted by GoogleMaps
      let googleMapsPrediction = 0;

      journeyStages.map((journeyStage) => {
        if (journeyStage.travel_mode === 'TRANSIT') {
          const transitDetails: google.maps.TransitDetails | undefined =
            journeyStage.transit;

          // Scenario where we call the API from the backend.
          if (transitDetails && stationPickles.indexOf(
              transitDetails.line.short_name) !== -1) {
            const route: string = transitDetails.line.short_name;
            const numStopsSegment: number = transitDetails.num_stops;
            const time: number = getSeconds(dateTimeSelection);

            urlsToFetch.push(`https://ipa-002.ucd.ie/api/prediction/${route}/${numStopsSegment}/${(time).toString()}`);
            predictionStages.push(-1);
          } else {
            const predictionInSeconds: google.maps.Duration | undefined =
              journeyStage.duration;
            if (predictionInSeconds) {
              const predictionInMinutes: number =
                Math.round((predictionInSeconds.value / 60 * 10) / 10);
              googleMapsPrediction =
                googleMapsPrediction + +predictionInMinutes;
              predictionStages.push(predictionInMinutes);
            }
          }
        }
      });

      // Retrieve all predictions and predictions stages
      Promise.all(urlsToFetch.map((url) => fetch(url)))
          .then((responses) =>
            responses.map((response) => response.json() as Promise<Prediction>))
          .then((predictions) => {
            Promise.all(predictions).then((predictions) => {
              const predictionValues: number[] =
                predictions.map((prediction) => prediction.prediction);

              let predictionStagesPointer = 0;
              for (let i = 0; i < predictionStages.length; i++) {
                if (predictionStages[i] === -1) {
                  predictionStages[i] =
                    predictionValues[predictionStagesPointer];
                  predictionStagesPointer += 1;
                }
              }

              // Addition using the reduce function:
              // https://stackoverflow.com/questions/33392307/what-does-the-array-method-reduce-do
              const totalPrediction: number = predictionValues.reduce(
                  (a: number, b: number) => +a + +b, 0,
              );
              const finalPrediction: number =
                totalPrediction + googleMapsPrediction;

              setPredictionStages(predictionStages);
              setPrediction(finalPrediction);
            });
          });
    };

  // This is where the POST API call will go.
  const submitClickHandler = () => {
    if (startSelection === undefined || finishSelection === undefined) {
      return;
    }

    setDirectionsAndPrediction(startSelection, finishSelection);
  };

  // Submit Button helper functions
  const submitDisableHandler = (): boolean => {
    // Disable button depending on whether or not multiroute
    // is selected and what the current user input is.
    if (multiRoute) {
      return startSelection === undefined ||
              finishSelection === undefined ||
              startSelection === finishSelection;
    }
    return routeSelection === undefined ||
          startSelection === undefined ||
          finishSelection === undefined ||
          startSelection === finishSelection;
  };

  return <>
    <Button
      variant={'contained'}
      onClick={submitClickHandler}
      disabled={submitDisableHandler()}
      sx={{margin: 1}}
    >
            Plan Journey
    </Button>
  </>;
};

export default PlanJourneyButton;
