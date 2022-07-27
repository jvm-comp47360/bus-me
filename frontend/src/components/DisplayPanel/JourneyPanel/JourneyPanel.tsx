import JourneyLeg from './JourneyLeg/JourneyLeg';

import BusStop from '../../../types/BusStop';
import BusRoute from '../../../types/BusRoute';

interface Props {
    startSelection: BusStop,
    departureTime: Date,
    finishSelection: BusStop,
    routeSelection: BusRoute,
    prediction: number,
}

const JourneyPanel = ({
    startSelection,
    departureTime,
    finishSelection, 
    routeSelection,
    prediction}: Props): JSX.Element => {
    return <>
        <JourneyLeg 
            startSelection={startSelection}
            departureTime={departureTime}
            finishSelection={finishSelection}
            routeSelection={routeSelection}
            prediction={Math.round(prediction)}
        />
    </>
};

export default JourneyPanel;