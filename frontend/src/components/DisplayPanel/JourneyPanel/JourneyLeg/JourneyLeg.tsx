import JourneyLegStop from "./JourneyLegStop";

import BusStop from '../../../../types/BusStop'

interface Props {
    time: Date,
    busStop: BusStop,
}

const JourneyLeg = ({time, busStop}: Props): JSX.Element => {
    return <>
        <JourneyLegStop 
            time={time} 
            busStop={busStop}
        />
    </>
};

export default JourneyLeg;