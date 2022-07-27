import JourneyLegStop from "./JourneyLegStop";

interface Props {
    time: Date,
}

const JourneyLeg = ({time}: Props): JSX.Element => {
    return <>
        <JourneyLegStop time={time} />
    </>
};

export default JourneyLeg;