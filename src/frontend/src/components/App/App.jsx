import '../../styles/main.css';
import Navbar from '../Navbar/Navbar';
import ControlPanel from '../ControlPanel/ControlPanel.jsx';

const App = () => {
  // Mock BusStopAPI data, to be updated pending discussion of state flow.
  const busStops = require('../../mockdata/MOCK_BUS_STOPS.json');

  return <>
    <Navbar></Navbar>
    <ControlPanel busStops={busStops}/>
  </>;
};

export default App;
