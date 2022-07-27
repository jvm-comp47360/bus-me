import JourneyLegStop from "./JourneyLegStop";
import JourneyLegInfo from "./JourneyLegInfo";

import BusStop from '../../../../types/BusStop'
import BusRoute from '../../../../types/BusRoute';

interface Props {
    time: Date,
    busStop: BusStop,
    routeSelection: BusRoute,
    prediction: number,
}

const JourneyLeg = ({
    time, 
    busStop, 
    routeSelection,
    prediction}: Props): JSX.Element => {
    return <>
        <JourneyLegStop 
            time={time} 
            busStop={busStop}
        />
        <JourneyLegInfo 
            routeSelection={routeSelection}
            prediction={prediction}/>
    </>
};

export default JourneyLeg;