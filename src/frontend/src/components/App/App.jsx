import '../../styles/main.css';
import ControlPanel from '../ControlPanel/ControlPanel.jsx';
import WeatherCard from '../WeatherCard/WeatherCard';
import BusRouteDropdown from
  '../ControlPanel/BusRouteDropdown/BusRouteDropdown';


const App = () => {
  // Mock API data, to be updated pending discussion of state flow.
  const busStopsApi = require('../../mockdata/MOCK_BUS_STOPS.json');
  const weatherApi = require('../../mockdata/MOCK_WEATHER.json');
  const busRoutes = [...new Set(busStopsApi.map((item) => item.route))];
  console.log(busRoutes);


  return <>
    <BusRouteDropdown busRoutes={busRoutes}/>
    <ControlPanel busStops={busStopsApi}/>
    {/* Can be deleted, just for demo purposes*/}
    <div>
      <WeatherCard weather={weatherApi[0]}/>
    </div>
  </>;
};

export default App;
