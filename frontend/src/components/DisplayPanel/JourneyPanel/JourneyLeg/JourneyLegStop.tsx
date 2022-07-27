import BusStop from '../../../../types/BusStop'

interface Props {
    time: Date,
    busStop: BusStop,
}

const JourneyLegStop = ({time, busStop}: Props): JSX.Element => {
    const journeyTime: string = `${time.getHours().toString()}:${time.getMinutes().toString()}`
    return <>
        <div>{journeyTime} – {busStop.name}</div>
    </>
};

export default JourneyLegStop;