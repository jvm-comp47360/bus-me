// CSS
import '../../styles/main.css';

// React
import {useState} from 'react';

// Components
import Navbar from '../Navbar/Navbar';
import ControlPanel from '../ControlPanel/ControlPanel';
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
import LoadScreen from "../DisplayPanel/Map/LoadScreen/LoadScreen";
import Appinfo from "../AppInfo/AppInfo";
import {Box, Container, Slide} from "@mui/material";
import AppInfo from "../AppInfo/AppInfo";

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
  const [appInfoIsOn, setAppInfoIsOn] = useState<boolean>(false);

  return <ThemeProvider theme={theme}>
    <LocalizationProvider dateAdapter={AdapterDateFns}>
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
    </LocalizationProvider>
  </ThemeProvider>;
};

export default App;
