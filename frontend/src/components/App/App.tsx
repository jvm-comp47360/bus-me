import '../../styles/main.css';
import Navbar from '../Navbar/Navbar';
import ControlPanel from '../ControlPanel/ControlPanel';
import WeatherCard from '../WeatherCard/WeatherCard';
import ResultsCard from '../ResultsCard/ResultsCard';
import Map from '../Map/Map';
import AboutSection from '../AboutSection/AboutSection';
import {AdapterDateFns} from '@mui/x-date-pickers/AdapterDateFns';
import {LocalizationProvider} from '@mui/x-date-pickers';

import busRoutesApi from '../../mockdata/MOCK_BUS_ROUTES.json';
import weatherApi from '../../mockdata/MOCK_WEATHER.json';
import {useEffect, useState} from 'react';

// const busRoutesUrl = 'http://localhost:8000/api/bus_stops';

type BusRoute = {
  id: string;
  name: string;
  bus_stops: BusStop[];
};

type BusStop = {
  id: string;
  name: string;
  number: number;
  latitude: string;
  longitude: string;
}

const [busRoutes, setBusRoutes] = useState<BusRoute[]>([]);

useEffect(() => {
  // Retrieves data relating to bus stops and sets component state.
  const getBusStops = async (): Promise<BusRoute[]> => {
    const dataInLocalStorage: string | null = localStorage.getItem('bus_stops');
    if (dataInLocalStorage) {
      return getLocalBusRoutes(dataInLocalStorage);
    } else {
      return busRoutesApi;
      // To be uncommented once the API is set up.
      // return await getBusStopsFromApi();
    }
  };
  getBusStops().then((data) => setBusRoutes(data));
}, []);

// Retrieves bus stop data from local storage in JSON format.
const getLocalBusRoutes =
    (dataInLocalStorage: string): BusRoute[] => JSON.parse(dataInLocalStorage);


// Retrieves bus stop data from API.
// const getBusStopsFromApi = async (): Promise<BusRoutes[]> => {
//   const busStopsData =
//       await fetch(busRoutesUrl).then((response) => response.json());
//   localStorage.setItem('bus_stops', JSON.stringify(busStopsData));
//   return busStopsData;
// };

const App = (): JSX.Element => {
  return <LocalizationProvider dateAdapter={AdapterDateFns}>
    <Navbar />
    <ControlPanel busRoutes={busRoutes}/>
    <div>
      <WeatherCard weather={weatherApi[0]}/>
      <ResultsCard duration={35}/>
      <Map />
    </div>
    <AboutSection />
  </LocalizationProvider>;
};

export default App;
