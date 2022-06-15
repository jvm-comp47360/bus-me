import '../../styles/main.css';
import ControlPanel from '../ControlPanel/ControlPanel.jsx';
import WeatherContainer from '../WeatherContainer/WeatherContainer';

const App = () => {
  // Mock API data, to be updated pending discussion of state flow.
  const busStopsApi = require('../../mockdata/MOCK_BUS_STOPS.json');
  const weatherApi = require('../../mockdata/MOCK_WEATHER.json');

  return <>
    <ControlPanel busStops={busStopsApi}/>

    {/* Can be deleted, just for demo purposes*/}
    <div>
      <WeatherContainer weather={weatherApi}/>
    </div>

  </>;
};

export default App;
