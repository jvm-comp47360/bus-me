import '../../styles/main.css';
import ControlPanel from '../ControlPanel/ControlPanel.jsx';

const App = () => {
  // Mock BusStopAPI data, to be updated pending discussion of state flow.
  const busStops = require('../../mockdata/MOCK_BUS_STOPS.json');

  return <>
    <ControlPanel busStops={busStops}/>
  </>;
};

export default App;
