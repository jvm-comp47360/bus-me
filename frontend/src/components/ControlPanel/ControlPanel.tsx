// React
import {Dispatch, SetStateAction, useEffect, useState} from 'react';

// Material UI
import Button from '@mui/material/Button';
import {Box, Slide, Typography} from '@mui/material';

// Types
import BusRoute from '../../types/BusRoute';
import BusStop from '../../types/BusStop';
type DirectionsResult = google.maps.DirectionsResult;

// Components
import RouteSelectionPanel from './RouteSelectionPanel/RouteSelectionPanel';
import StopSelectionPanel from './StopSelectionPanel/StopSelectionPanel';

interface Props {
  startSelection: BusStop | undefined;
  setStartSelection: Dispatch<SetStateAction<BusStop | undefined>>;
  finishSelection: BusStop | undefined;
  setFinishSelection: Dispatch<SetStateAction<BusStop | undefined>>;
  routeSelection: BusRoute | undefined;
  setRouteSelection: Dispatch<SetStateAction<BusRoute | undefined>>;
  setPrediction: Dispatch<SetStateAction<number | undefined>>;
  setDirections: Dispatch<SetStateAction<DirectionsResult | null>>;
  busRoutes: BusRoute[];
  setBusRoutes: Dispatch<SetStateAction<BusRoute[]>>
  busStops: BusStop[];
  multiRoute: boolean
  setMultiRoute: Dispatch<SetStateAction<boolean>>
  setPredictionStages: Dispatch<SetStateAction<number[]>>
}

// Animation Bug Fix Credit:
// https://stackoverflow.com/questions/55647969/how-to-get-one-elements-to-slide-in-while-the-other-slides-out-using-react-and

const ControlPanel = ({
  startSelection,
  setStartSelection,
  finishSelection,
  setFinishSelection,
  routeSelection,
  setRouteSelection,
  setPrediction,
  setDirections,
  busRoutes,
  setBusRoutes,
  busStops,
  multiRoute,
  setPredictionStages,
}: Props): JSX.Element => {
  const [dateTimeSelection, setDateTimeSelection] =
      useState<Date | undefined>(new Date());

  useEffect(() => {
    const localStorageRoutes: string | null =
      localStorage.getItem('bus_routes');

    const localStorageRoutesTtl: string | null =
      localStorage.getItem('bus_routes_ttl');

    if (localStorageRoutes && !timeStampOutOfDate(localStorageRoutesTtl)) {
      setBusRoutes(JSON.parse(localStorageRoutes));
    } else {
      fetch('https://ipa-002.ucd.ie/api/bus_routes/')
          .then((response) => {
            if (response.ok) {
              return response.json() as Promise<BusRoute[]>;
            } else {
              throw new Error();
            }
          })
          .then((data) => {
            setBusRoutes(data);
            localStorage.setItem('bus_routes', JSON.stringify(data));
            localStorage.setItem('bus_routes_ttl', new Date().toISOString());
          })
          .catch((error) => console.log(error));
    }
  }, []);

  const timeStampOutOfDate = (currentTimeStamp: string | null) => {
    // Checking if the timestamp in local storage should be replaced.
    if (!currentTimeStamp) return true;

    const timeStampDate: Date = new Date(currentTimeStamp);
    const currentDate = new Date();

    const currentTime = currentDate.getTime();
    const timeStampTime = timeStampDate.getTime();
    const timeDifference = (currentTime - timeStampTime) / 36e5;

    return timeDifference > 24;
  };

  return <Box
    display={'flex'}
    flexDirection={'row'}
    flexWrap={'wrap'}
    justifyContent={'center'}
    sx={{backgroundColor: '#ffff72'}}
    p={1}
  >
    {/* Route Selection panel disappears if multiRoute is selected*/}
    {multiRoute ? null :
      <RouteSelectionPanel
        busRoutes={busRoutes}
        routeSelection={routeSelection}
        setRouteSelection={setRouteSelection}
        setStartSelection={setStartSelection}
        setFinishSelection={setFinishSelection}
        setPrediction={setPrediction}
        setDirections={setDirections}
      />
    }
    <StopSelectionPanel
      busRoutes={busRoutes}
      busStops={busStops}
      routeSelection={routeSelection}
      startSelection={startSelection}
      setStartSelection={setStartSelection}
      finishSelection={finishSelection}
      setFinishSelection={setFinishSelection}
      dateTimeSelection={dateTimeSelection}
      setDateTimeSelection={setDateTimeSelection}
      setPrediction={setPrediction}
      setDirections={setDirections}
      multiRoute={multiRoute}
      setPredictionStages={setPredictionStages}
    />
  </Box>;
};

export default ControlPanel;
