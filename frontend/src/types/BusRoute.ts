import BusStop from './BusStop';

type BusRoute = {
    id: string;
    name: string;
    bus_stops: BusStop[];
};

export default BusRoute;
