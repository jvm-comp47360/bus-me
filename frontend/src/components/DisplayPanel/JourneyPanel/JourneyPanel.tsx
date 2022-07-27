import JourneyLeg from './JourneyLeg/JourneyLeg'

import BusStop from '../../../types/BusStop'

interface Props {
    time: Date,
    busStop: BusStop,
}

const JourneyPanel = ({time, busStop}: Props): JSX.Element => {
    return <>
        <JourneyLeg 
            time={time} 
            busStop={busStop}
        />
    </>
};

export default JourneyPanel;