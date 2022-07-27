import BusRoute from '../../../../types/BusRoute';

interface Props {
    routeSelection: BusRoute,
    prediction: number,
}

const JourneyLegInfo = ({routeSelection, prediction}: Props): JSX.Element => {
    const getPredictionString = (prediction: number): string => {
        if (prediction < 60) return `${prediction} mins`;
        else if (prediction < 120) {
            if (prediction === 60) return '1 hr';
            else {
                const predictedMinutes = prediction - 60;
                return `1 hr ${predictedMinutes} mins`;
            }
        } else {
            if (prediction === 120) return '2 hrs';
            else {
                const predictedMinutes = prediction - 120;
                return `2 hrs ${predictedMinutes} mins`;
            }
        }
    };
    
    return <>
        <div>{routeSelection.name}</div>
        <div>({getPredictionString(prediction)})</div>
    </>
};

export default JourneyLegInfo;