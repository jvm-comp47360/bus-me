import JourneyLegStop from "./JourneyLegStop";
import JourneyLegInfo from "./JourneyLegInfo";

import BusStop from '../../../../types/BusStop'
import BusRoute from '../../../../types/BusRoute';

import {Grid} from '@mui/material';

interface Props {
    startSelection: BusStop,
    departureTime: Date,
    finishSelection: BusStop,
    routeSelection: BusRoute,
    prediction: number,
}

const JourneyLeg = ({
    startSelection, 
    departureTime, 
    finishSelection,
    routeSelection,
    prediction}: Props): JSX.Element => {

    const getArrivalTime = (depatureTime: Date, prediction: number): Date => {
        const startUnixTime: number = depatureTime.getTime();
        const predictionInMillisecs: number = prediction * 60 * 1000;
        return new Date(startUnixTime + predictionInMillisecs);
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
            routeSelection={routeSelection}
            prediction={prediction}/>
        <JourneyLegStop 
            stopSelection={finishSelection}
            time={getArrivalTime(departureTime, prediction)} 
        />
    </Grid>
};

export default JourneyLeg;