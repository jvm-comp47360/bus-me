import '../../styles/main.css';
import Navbar from '../Navbar/Navbar';
import ControlPanel from '../ControlPanel/ControlPanel';
import WeatherCard from '../WeatherCard/WeatherCard';
import ResultsCard from '../ResultsCard/ResultsCard';
import Map from '../Map/Map';
import {AdapterDateFns} from '@mui/x-date-pickers/AdapterDateFns';
import {LocalizationProvider} from '@mui/x-date-pickers';

import busStopsApi from '../../mockdata/MOCK_BUS_STOPS.json';
import weatherApi from '../../mockdata/MOCK_WEATHER.json';

const App = (): JSX.Element => {
  return <LocalizationProvider dateAdapter={AdapterDateFns}>
    <Navbar />
    <ControlPanel busStops={busStopsApi}/>
    <div>
      <WeatherCard weather={weatherApi[0]}/>
      <ResultsCard duration={35}/>
      <Map />
    </div>
  </LocalizationProvider>;
};

export default App;
