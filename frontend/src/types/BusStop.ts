import RouteInfo from './RouteInfo';

type BusStop = {
    id: string;
    name: string;
    number: number;
    latitude: string;
    longitude: string;
    bus_routes?: RouteInfo[]
};

export default BusStop;
