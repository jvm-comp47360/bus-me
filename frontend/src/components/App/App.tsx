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
import {useState} from 'react';
import BusRoute from '../../types/BusRoute';
import BusStop from '../../types/BusStop';
import Weather from '../../types/Weather';

const App = (): JSX.Element => {
  // eslint-disable-next-line no-unused-vars
  const [busRoutes, setBusRoutes] = useState<BusRoute[]>(busRoutesApi);
  const [busStops, setBusStops] = useState<BusStop[]>([]);
  const [startSelection, setStartSelection] = useState<BusStop | null>(null);
  const [finishSelection, setFinishSelection] = useState<BusStop | null>(null);
  const [dateTimeSelection, setDateTimeSelection] = useState<Date>(new Date());
  const [weather, setWeather] = useState<Weather>(weatherApi[0]);

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
