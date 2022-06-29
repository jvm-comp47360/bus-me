import '../../styles/main.css';

import {useState} from 'react';

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

import BusRoute from '../../types/BusRoute';
import BusStop from '../../types/BusStop';
import Weather from '../../types/Weather';

const App = (): JSX.Element => {
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
