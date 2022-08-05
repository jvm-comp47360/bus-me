import JourneyLegStop from "./JourneyLegStop";
import JourneyLegInfo from "./JourneyLegInfo";

import BusStop from '../../../../types/BusStop'
import BusRoute from '../../../../types/BusRoute';

import {Grid} from '@mui/material';

interface Props {
    startSelection: BusStop,
    departureTime: Date,
    finishSelection: BusStop,
    routeSelection: BusRoute | undefined,
    prediction: number,
    predictionStages: number[],
    directions: google.maps.DirectionsResult | null,
}

type PredictionStages = {
    route: String,
    prediction: number,
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

        return new Date(startUnixTime + predictionInMillisecs);
    }

    const getRoutes = (): string[] => {
        const routes: string[] = []
        if (!directions || predictionStages.length === 0) {
            return routes;
        }
        directions.routes[0].legs[0].steps.map((step: google.maps.DirectionsStep) => {
            if (step.travel_mode === 'TRANSIT' && step.transit) {
                routes.push(step.transit.line.short_name)
            }
        })
        return routes;
    }

    return <Grid 
            container
            sx={{
                my: 1,
            }}>


          <JourneyLegStop
            stopSelection={startSelection}
            time={departureTime}
          />
          <JourneyLegInfo
            routeSelection={(routeSelection) ? routeSelection : getRoutes()}
            prediction={prediction}
          />
            <JourneyLegStop
            stopSelection={finishSelection}
            time={getArrivalTime(departureTime, prediction)}
            />

    </Grid>
};

export default JourneyLeg;