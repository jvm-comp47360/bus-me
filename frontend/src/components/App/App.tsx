// CSS
import '../../styles/main.css';

// React
import {useState} from 'react';

// Components
import Navbar from '../Navbar/Navbar';
import ControlPanel from '../ControlPanel/ControlPanel';
import AboutSection from '../AboutSection/AboutSection';
import DisplayPanel from '../DisplayPanel/DisplayPanel';

// Material UI
import ContactSection from '../ContactSection/ContactSection';
import {AdapterDateFns} from '@mui/x-date-pickers/AdapterDateFns';
import {LocalizationProvider} from '@mui/x-date-pickers';
import {ThemeProvider} from '@mui/material/styles';

// Types
import BusRoute from '../../types/BusRoute';
import BusStop from '../../types/BusStop';
import theme from './Theme';
import LoadScreen from "./LoadScreen/LoadScreen";

const App = (): JSX.Element => {
  const [prediction, setPrediction] = useState<number | undefined>(undefined);

  // Selections may be undefined if the user has not picked them yet.
  const [startSelection, setStartSelection] =
      useState<BusStop | undefined>(undefined);
  const [finishSelection, setFinishSelection] =
      useState<BusStop | undefined>(undefined);
  const [routeSelection, setRouteSelection] =
      useState<BusRoute | undefined>(undefined);
  const [directions, setDirections] =
   useState<google.maps.DirectionsResult | null>(null);

  return <ThemeProvider theme={theme}>
    <LocalizationProvider dateAdapter={AdapterDateFns}>
      <LoadScreen open={true}/>
      <Navbar/>
      <ControlPanel
        startSelection={startSelection}
        setStartSelection={setStartSelection}
        finishSelection={finishSelection}
        setFinishSelection={setFinishSelection}
        routeSelection={routeSelection}
        setRouteSelection={setRouteSelection}
        setPrediction={setPrediction}
        setDirections={setDirections}
      />
      <DisplayPanel
        prediction={prediction}
        setPrediction={setPrediction}
        startSelection={startSelection}
        finishSelection={finishSelection}
        setStartSelection={setStartSelection}
        setFinishSelection={setFinishSelection}
        directions={directions}
        routeSelection={routeSelection}
      />
      <AboutSection />
      <ContactSection />
    </LocalizationProvider>
  </ThemeProvider>;
};

export default App;
