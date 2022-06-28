import '../../styles/main.css';
import Navbar from '../Navbar/Navbar';
import ControlPanel from '../ControlPanel/ControlPanel';
import WeatherCard from '../WeatherCard/WeatherCard';
import ResultsCard from '../ResultsCard/ResultsCard';
import Map from '../Map/Map';
import AboutSection from '../AboutSection/AboutSection';

import busStopsApi from '../../mockdata/MOCK_BUS_STOPS.json';
import weatherApi from '../../mockdata/MOCK_WEATHER.json';

const App = (): JSX.Element => {
  return <>
    <Navbar />
    <ControlPanel busStops={busStopsApi}/>
    <div>
      <WeatherCard weather={weatherApi[0]}/>
      <ResultsCard duration={35}/>
      <Map />
    </div>
    <AboutSection />

  </>;
};

export default App;
