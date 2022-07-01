// CSS
import '../../styles/main.css';

// React
import {useState} from 'react';

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

// Types
import BusRoute from '../../types/BusRoute';
import BusStop from '../../types/BusStop';

const App = (): JSX.Element => {

  // Information from API calls
  const [prediction, setPrediction] = useState<number | undefined>(undefined);

  // Selections may be undefined if the user has not picked them yet.
  const [startSelection, setStartSelection] =
      useState<BusStop | undefined>(undefined);
  const [finishSelection, setFinishSelection] =
      useState<BusStop | undefined>(undefined);
  const [routeSelection, setRouteSelection] =
      useState<BusRoute | undefined>(undefined);

  return <LocalizationProvider dateAdapter={AdapterDateFns}>
    <Navbar />
    <ControlPanel
      startSelection={startSelection}
      setStartSelection={setStartSelection}
      finishSelection={finishSelection}
      setFinishSelection={setFinishSelection}
      routeSelection={routeSelection}
      setRouteSelection={setRouteSelection}
      prediction={prediction}
      setPrediction={setPrediction}
    />
    <div>
      <WeatherCard/>
      <ResultsCard duration={35}/>
      <Map />
    </div>
    <AboutSection />
  </LocalizationProvider>;
};

export default App;
