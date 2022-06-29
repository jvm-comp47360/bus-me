// CSS
import '../../styles/main.css';

// React
import {useEffect, useState} from 'react';

// Components
import Navbar from '../Navbar/Navbar';
import ControlPanel from '../ControlPanel/ControlPanel';
import WeatherCard from '../WeatherCard/WeatherCard';
import ResultsCard from '../ResultsCard/ResultsCard';
import Map from '../Map/Map';
import AboutSection from '../AboutSection/AboutSection';

// Material UI
import {AdapterDateFns} from '@mui/x-date-pickers/AdapterDateFns';
import {LocalizationProvider} from '@mui/x-date-pickers';

// Mock APIs
import busRoutesApi from '../../mockdata/MOCK_BUS_ROUTES.json';
import weatherApi from '../../mockdata/MOCK_WEATHER.json';

// Types
import BusRoute from '../../types/BusRoute';
import BusStop from '../../types/BusStop';
import Weather from '../../types/Weather';

const App = (): JSX.Element => {
  // API urls
  const busRoutesUrl = 'http://localhost/api/bus_routes';
  const weatherUrl = 'http://localhost/api/current_weather';

  // Information from API calls
  const [busRoutes, setBusRoutes] = useState<BusRoute[]>(busRoutesApi);
  const [weather, setWeather] = useState<Weather>(weatherApi[0]);

  // Changes depending on currently selected route.
  const [busStops, setBusStops] = useState<BusStop[]>([]);

  // Selections may be null if the user has not picked them yet.
  const [startSelection, setStartSelection] = useState<BusStop | null>(null);
  const [finishSelection, setFinishSelection] = useState<BusStop | null>(null);
  const [routeSelection, setRouteSelection] = useState<BusRoute | null>(null);
  const [dateTimeSelection, setDateTimeSelection] =
      useState<Date | null>(new Date());

  useEffect(() => {
    // Needs to be declared inside useEffect to be triggered on page load.
    const getBusRoutes = async (): Promise<BusRoute[]> => {
      const dataInLocalStorage: string | null =
          localStorage.getItem('bus_routes');
      if (dataInLocalStorage) {
        return getLocalBusRoutes(dataInLocalStorage);
      } else {
        return await getBusRoutesFromApi();
      }
    };

    const getWeather = async (): Promise<Weather> => {
      const dataInLocalStorage: string | null =
          localStorage.getItem('weather');
      if (dataInLocalStorage) {
        return getLocalWeather(dataInLocalStorage);
      } else {
        return await getWeatherFromApi();
      }
    };

    getBusRoutes().then((data: BusRoute[]) => setBusRoutes(data));
    getWeather().then((data: Weather) => setWeather(data));
  }, []);

  // Retrieves bus stop data from local storage in JSON format.
  const getLocalBusRoutes = (dataInLocalStorage: string): BusRoute[] =>
    JSON.parse(dataInLocalStorage);

  // Retrieves weather data from local storage in JSON format.
  const getLocalWeather = (dataInLocalStorage: string): Weather =>
    JSON.parse(dataInLocalStorage);

  // Retrieves bus stop data from API.
  const getBusRoutesFromApi = async (): Promise<BusRoute[]> => {
    const busStopsData: BusRoute[] = await fetch(busRoutesUrl)
        .then((response) => response.json());
    localStorage.setItem('bus_stops', JSON.stringify(busStopsData));
    return busStopsData;
  };

  // Retrieves weather from API.
  const getWeatherFromApi = async (): Promise<Weather> => {
    const weatherData: Weather = await fetch(weatherUrl)
        .then((response) => response.json());
    localStorage.setItem('weather', JSON.stringify(weatherData));
    return weatherData;
  };

  return <LocalizationProvider dateAdapter={AdapterDateFns}>
    <Navbar />
    <ControlPanel
      busRoutes={busRoutes}
      setBusRoutes={setBusRoutes}
      busStops={busStops}
      setBusStops={setBusStops}
      startSelection={startSelection}
      setStartSelection={setStartSelection}
      finishSelection={finishSelection}
      setFinishSelection={setFinishSelection}
      routeSelection={routeSelection}
      setRouteSelection={setRouteSelection}
      dateTimeSelection={dateTimeSelection}
      setDateTimeSelection={setDateTimeSelection}
    />
    <div>
      <WeatherCard
        weather={weather}
        setWeather={setWeather}
      />
      <ResultsCard duration={35}/>
      <Map />
    </div>
    <AboutSection />
  </LocalizationProvider>;
};

export default App;
