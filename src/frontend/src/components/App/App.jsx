import '../../styles/main.css';
import ControlPanel from '../ControlPanel/ControlPanel.jsx';
import WeatherCard from '../WeatherCard/WeatherCard';

const App = () => {
  // Mock BusStopAPI data, to be updated pending discussion of state flow.
  const busStops = require('../../mockdata/MOCK_BUS_STOPS.json');

  // Mock WeatherCard data, to be updated pending discussion of state flow.
  // TBC what format the date is going to be in.
  const icon = '10n';
  const date = '15 June 2022';

  return <>
    <ControlPanel busStops={busStops}/>
    <div>
      <WeatherCard icon={icon} date={date}/>
    </div>

  </>;
};

export default App;
