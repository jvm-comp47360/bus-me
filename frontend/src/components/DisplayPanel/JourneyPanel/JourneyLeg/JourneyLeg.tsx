import JourneyLegStop from "./JourneyLegStop";
import JourneyLegInfo from "./JourneyLegInfo";

import BusStop from '../../../../types/BusStop'
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

    const getArrivalTime = (depatureTime: Date, prediction: number): Date => {
        const startUnixTime: number = depatureTime.getTime();
        const predictionInMillisecs: number = prediction * 60 * 1000;
        console.log(prediction)

        return new Date(startUnixTime + predictionInMillisecs);
    }

    // This function extracts relevant journey data from the Google Maps API call.
    // To avoid sending this information as state, because the API call at this point
    // has already been made, it is significantly more efficient and performant to just
    // extract this data from the resulting JSON file.
    const getRoutes = (): RouteDeparture[] => {
        const routes: RouteDeparture[] = []
        if (!directions || predictionStages.length === 0) {
            return routes;
        }
        directions.routes[0].legs[0].steps.map((step: google.maps.DirectionsStep) => {
            if (step.travel_mode === 'TRANSIT' && step.transit) {
                const routeDeparture: RouteDeparture = {route: step.transit.line.short_name,
                    departure: step.transit.departure_time.value,
                    startStop: step.transit.departure_stop.name.split(',')[0],
                    finishStop: step.transit.arrival_stop.name.split(',')[0],
                }
                routes.push(routeDeparture)
            }
        })
        return routes;
    }

    // This is in its own separate function for readability purposes.
    // Too much logic here to just fit within the ternary conditional.
    const showJourneyLegs = () => {

        // Gather all the routes used for this journey using the directions API call.
        const routes: RouteDeparture[] = getRoutes();

        // Array to store JSX elements that will be rendered.
        const predictionStagesDisplay = [];
        for (let i = 0; i < predictionStages.length; i++) {

            // If it is the first journey leg, keep the start station the same,
            // but get the destination station from the API call (in case there are stop overs).
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
                      time={getArrivalTime(departureTime, Math.round(predictionStages[i]))}
                    />
                </>)

            // If it's the last station, the start stop is from the API call, and the ending
            // station is the user's selected route. We set the departure time as the one
            // that Google Maps suggests, to ensure that it matches real time bus timetables.
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
                      time={getArrivalTime(routes[i].departure, Math.round(predictionStages[i]))}
                    />
                </>)

            // If it's one of the stages in the middle, both start and finish stations should be
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
                      time={getArrivalTime(routes[i].departure, Math.round(predictionStages[i]))}
                    />
                </>)
            }
        }
        return predictionStagesDisplay;
    }

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
    </Grid>
};

export default JourneyLeg;