import BusStop from '../../../../types/BusStop'

interface Props {
    time: Date,
    stopSelection: BusStop,
}

const JourneyLegStop = ({time, stopSelection}: Props): JSX.Element => {
    const journeyTime: string = `${time.getHours().toString()}:${time.getMinutes().toString()}`
    return <>
        <div>{journeyTime} – {stopSelection.name}</div>
    </>
};

export default JourneyLegStop;