import BusRoute from '../../../../types/BusRoute';

interface Props {
    routeSelection: BusRoute
}

const JourneyLegInfo = ({routeSelection}: Props): JSX.Element => {
    return <>
        <div>{routeSelection.name}</div>
    </>
};

export default JourneyLegInfo;