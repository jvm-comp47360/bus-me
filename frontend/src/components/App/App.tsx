// CSS
import '../../styles/main.css';

// React
import {useState, useEffect} from 'react';

// Components
import Navbar from '../Navbar/Navbar';
import ControlPanel from '../ControlPanel/ControlPanel';
import DisplayPanel from '../DisplayPanel/DisplayPanel';

// Material UI
import {AdapterDateFns} from '@mui/x-date-pickers/AdapterDateFns';
import {LocalizationProvider} from '@mui/x-date-pickers';
import {ThemeProvider} from '@mui/material/styles';

// Types
import BusRoute from '../../types/BusRoute';
import BusStop from '../../types/BusStop';
import theme from './Theme';

const App = (): JSX.Element => {
  const [prediction, setPrediction] = useState<number | undefined>(undefined);
  const [startSelection, setStartSelection] =
      useState<BusStop | undefined>(undefined);

  const [finishSelection, setFinishSelection] =
      useState<BusStop | undefined>(undefined);

  const [routeSelection, setRouteSelection] =
      useState<BusRoute | undefined>(undefined);

  const [directions, setDirections] =
   useState<google.maps.DirectionsResult | null>(null);

  const [busStops, setBusStops] = useState<BusStop[]>([]);

  const [busRoutes, setBusRoutes] = useState<BusRoute[]>([]);

  const [multiRoute, setMultiRoute] = useState<boolean>(false);

  const [predictionStages, setPredictionStages] = useState<number[]>([])

  useEffect(() => {
    const localStorageStops: string | null =
      localStorage.getItem('bus_stops');

      if (localStorageStops) {
        setBusStops(JSON.parse(localStorageStops));
      } else {
        fetch('http://ipa-002.ucd.ie/api/bus_stops/')
          .then((response) => {
            if (response.ok) {
              return response.json() as Promise<BusStop[]>;
            } else {
              throw new Error();
            }
          })
          .then((data) => {
            setBusStops(data);
            localStorage.setItem('bus_stops', JSON.stringify(data))
          })
          .catch((error) => console.log(error));
      }
  }, [])

  return <ThemeProvider theme={theme}>
    <LocalizationProvider dateAdapter={AdapterDateFns}>
      <Navbar
        multiRoute={multiRoute}
        setMultiRoute={setMultiRoute}
        setRouteSelection={setRouteSelection}
        setStartSelection={setStartSelection}
        setFinishSelection={setFinishSelection}
        setPrediction={setPrediction}
        setDirections={setDirections}
      />
      <ControlPanel
        startSelection={startSelection}
        setStartSelection={setStartSelection}
        finishSelection={finishSelection}
        setFinishSelection={setFinishSelection}
        routeSelection={routeSelection}
        setRouteSelection={setRouteSelection}
        setPrediction={setPrediction}
        setDirections={setDirections}
        busRoutes={busRoutes}
        setBusRoutes={setBusRoutes}
        busStops={busStops}
        multiRoute={multiRoute}
        setMultiRoute={setMultiRoute}
        setPredictionStages={setPredictionStages}
      />
      <DisplayPanel
        prediction={prediction}
        startSelection={startSelection}
        finishSelection={finishSelection}
        directions={directions}
        routeSelection={routeSelection}
        busStops={busStops}
        busRoutes={busRoutes}
        setStartSelection={setStartSelection}
        setFinishSelection={setFinishSelection}
        setRouteSelection={setRouteSelection}
        multiRoute={multiRoute}
        predictionStages={predictionStages}
      />
    </LocalizationProvider>
  </ThemeProvider>;
};

export default App;
