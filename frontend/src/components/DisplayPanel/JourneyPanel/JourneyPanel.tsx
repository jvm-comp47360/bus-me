import JourneyLeg from './JourneyLeg/JourneyLeg'

interface Props {
    time: Date,
}

const JourneyPanel = ({time}: Props): JSX.Element => {
    return <>
        <JourneyLeg time={time} />
    </>
};

export default JourneyPanel;