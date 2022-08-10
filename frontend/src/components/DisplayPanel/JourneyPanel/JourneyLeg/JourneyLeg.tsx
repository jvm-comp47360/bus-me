import JourneyLegStop from './JourneyLegStop/JourneyLegStop';
import JourneyLegInfo from './JourneyLegInfo/JourneyLegInfo';

import BusStop from '../../../../types/BusStop';
import BusRoute from '../../../../types/BusRoute';

import {Divider, Grid} from '@mui/material';

interface Props {
    startSelection: BusStop,
    departureTime: Date,
    finishSelection: BusStop,
    routeSelection: BusRoute | undefined,
    prediction: number,
    predictionStages: number[],
    directions: google.maps.DirectionsResult | null,
}

type RouteDeparture = {
    route: string,
    departure: Date,
    startStop: string,
    finishStop: string,
}

const JourneyLeg = ({
  startSelection,
  departureTime,
  finishSelection,
  routeSelection,
  prediction, directions, predictionStages}: Props): JSX.Element => {
  const getArrivalTime = (depatureTime: Date, prediction: number): Date => {
    const startUnixTime: number = new Date(depatureTime).getTime();
    const predictionInMillisecs: number = prediction * 60 * 1000;
    return new Date(startUnixTime + predictionInMillisecs);
  };

  // This function extracts relevant journey data from the Google Maps API call.
  // To avoid sending this information as state,
  // because the API call at this point
  // has already been made, it is significantly
  // more efficient and performant to just
  // extract this data from the resulting JSON file.
  const getRoutes = (): RouteDeparture[] => {
    const routes: RouteDeparture[] = [];
    if (!directions || predictionStages.length === 0) {
      return routes;
    }
    directions.routes[0].legs[0].steps.map(
        (step: google.maps.DirectionsStep) => {
          if (step.travel_mode === 'TRANSIT' && step.transit) {
            // While most of the stations provided
            // by Google Maps API are in the format
            // "BusSop, stop 1234", just in case we
            // include a fallback if the there is no
            // stop number provided by just using the full name of the station.
            // Otherwise, when we split by comma,
            // we will get nothing and the application will crash.
            const routeDeparture: RouteDeparture =
              {route: step.transit.line.short_name,
                departure: step.transit.departure_time.value,
                startStop:
                (step.transit.departure_stop.name.split(',').length === 0) ?
                      step.transit.departure_stop.name :
                  step.transit.departure_stop.name.split(',')[0],
                finishStop: (step.transit.arrival_stop.name
                    .split(',').length === 0) ?
                step.transit.arrival_stop.name :
                step.transit.arrival_stop.name.split(',')[0],
              };
            routes.push(routeDeparture);
          }
        });
    return routes;
  };

  // This is in its own separate function for readability purposes.
  // Too much logic here to just fit within the ternary conditional.
  const showJourneyLegs = () => {
    // Gather all the routes used for journey using the directions API call.
    const routes: RouteDeparture[] = getRoutes();

    // Array to store JSX elements that will be rendered.
    const predictionStagesDisplay = [];
    for (let i = 0; i < predictionStages.length; i++) {
      // If it is the first journey leg, keep the start station the same,
      // but get destination station from API call (in case of stopovers).
      if (i == 0) {
        predictionStagesDisplay.push(<>
          <JourneyLegStop
            stopSelection={startSelection}
            time={departureTime}
          />
          <JourneyLegInfo
            routeSelection={routes[i].route}
            prediction={Math.round(predictionStages[i])}
          />
          <JourneyLegStop
            stopSelection={routes[i].finishStop}
            time={getArrivalTime(departureTime,
                Math.round(predictionStages[i]))}
          />
          <Divider style={{width: '100%'}}/>
        </>);

        // If it's the last station, the start
        // stop is from the API call, and the ending
        // station is the user's selected route.
        // We set the departure time as the one
        // that Google Maps suggests, to ensure
        // that it matches real time bus timetables.
      } else if (i == predictionStages.length - 1) {
        predictionStagesDisplay.push(<>
          <JourneyLegStop
            stopSelection={routes[i].startStop}
            time={routes[i].departure}
          />
          <JourneyLegInfo
            routeSelection={routes[i].route}
            prediction={Math.round(predictionStages[i])}
          />
          <JourneyLegStop
            stopSelection={finishSelection}
            time={getArrivalTime(routes[i].departure,
                Math.round(predictionStages[i]))}
          />
        </>);

        // If it's one of the stages in the middle,
        // both start and finish stations should be
        // from Google API (as we don't know if there will be stopovers).
      } else {
        predictionStagesDisplay.push(<>
          <JourneyLegStop
            stopSelection={routes[i].startStop}
            time={routes[i].departure}
          />
          <JourneyLegInfo
            routeSelection={routes[i].route}
            prediction={Math.round(predictionStages[i])}
          />
          <JourneyLegStop
            stopSelection={routes[i].finishStop}
            time={getArrivalTime(routes[i].departure,
                Math.round(predictionStages[i]))}
          />
          <Divider style={{width: '100%'}}/>
        </>);
      }
    }
    return predictionStagesDisplay;
  };

  return <Grid
    container
    sx={{
      my: 1,
    }}>
    {
        (routeSelection || predictionStages.length === 0) ?
          <>
            <JourneyLegStop
              stopSelection={startSelection}
              time={departureTime}
            />
            <JourneyLegInfo
              routeSelection={routeSelection}
              prediction={prediction}
            />
            <JourneyLegStop
              stopSelection={finishSelection}
              time={getArrivalTime(departureTime, prediction)}
            />
          </> : showJourneyLegs()
    }
  </Grid>;
};

export default JourneyLeg;
