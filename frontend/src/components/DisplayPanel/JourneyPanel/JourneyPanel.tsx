import JourneyLeg from './JourneyLeg/JourneyLeg';

import BusStop from '../../../types/BusStop';
import BusRoute from '../../../types/BusRoute';

interface Props {
    time: Date,
    busStop: BusStop,
    routeSelection: BusRoute,
}

const JourneyPanel = ({time, busStop, routeSelection}: Props): JSX.Element => {
    return <>
        <JourneyLeg 
            time={time} 
            busStop={busStop}
            routeSelection={routeSelection}
        />
    </>
};

export default JourneyPanel;