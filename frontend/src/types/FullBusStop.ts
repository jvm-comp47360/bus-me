type FullBusStop = {
  id: string;
  name: string;
  number: number;
  latitude: string;
  longitude: string;
  bus_routes: {
    id: string;
    name: string;
  };
};

export default FullBusStop;
