interface Props {
    time: Date,
}

const JourneyLegStop = ({time}: Props): JSX.Element => {
    const journeyTime: string = `${time.getHours().toString()}:${time.getMinutes().toString()}`
    return <>
        <div>{journeyTime}</div>
    </>
};

export default JourneyLegStop;