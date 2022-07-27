import JourneyLeg from './JourneyLeg/JourneyLeg';

import BusStop from '../../../types/BusStop';
import BusRoute from '../../../types/BusRoute';

interface Props {
    time: Date,
    busStop: BusStop,
    routeSelection: BusRoute,
    prediction: number,
}

const JourneyPanel = ({
    time, 
    busStop, 
    routeSelection,
    prediction}: Props): JSX.Element => {
    return <>
        <JourneyLeg 
            time={time} 
            busStop={busStop}
            routeSelection={routeSelection}
            prediction={Math.round(prediction)}
        />
    </>
};

export default JourneyPanel;