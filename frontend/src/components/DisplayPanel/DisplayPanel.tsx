import {Dispatch, SetStateAction, useEffect, useState} from 'react';

import {Box} from '@mui/material';

import BusStop from '../../types/BusStop';
import BusRoute from '../../types/BusRoute';
import Weather from "../../types/Weather";

import WeatherCard from './WeatherCard/WeatherCard';
import Map from './Map/Map';
import JourneyPanel from './JourneyPanel/JourneyPanel';
import JourneyPanelCollapsed from './JourneyPanelCollapsed/JourneyPanelCollapsed';

import mockData from '../../mockdata/MOCK_BUS_ROUTES.json';

type DirectionsResult = google.maps.DirectionsResult;

interface Props {
    prediction: number | undefined;
    startSelection: BusStop | undefined;
    finishSelection: BusStop | undefined;
    directions: DirectionsResult | null;
    routeSelection: BusRoute | undefined;
    busStops: BusStop[];
    busRoutes: BusRoute[];
    setStartSelection: Dispatch<SetStateAction<BusStop | undefined>>;
    setFinishSelection: Dispatch<SetStateAction<BusStop | undefined>>;
    setRouteSelection: Dispatch<SetStateAction<BusRoute | undefined>>;
}

const DisplayPanel = ({
  prediction,
  startSelection,
  finishSelection,
  directions,
  busStops,
  busRoutes,
  routeSelection,
  setStartSelection,
  setFinishSelection,
  setRouteSelection,
}: Props): JSX.Element => {
  // Icon credit: https://github.com/yuvraaaj/openweathermap-api-icons
  const [weather, setWeather] = useState<Weather>();
  const [collapseJourneyPanel, setCollapseJourneyPanel] = useState<Boolean>(false);
  const [userLocation, setUserLocation] = useState<google.maps.LatLngLiteral>({lat: 53.34740, lng: -6.25914});

  const distanceFromEdge: number = 2;

  useEffect(() => {
    fetch('http://ipa-002.ucd.ie/api/current_weather/')
      .then((response) => {
        if (response.ok) {
          return response.json() as Promise<Weather>;
        } else {
          throw new Error();
        }
      })
      .then(setWeather)
      .catch((error) => console.log(error));
  }, [])

  return <Box 
      sx={{
        position: 'relative', 
        zIndex: 0,
        px: distanceFromEdge,
      }}>
        <Box
        id="right-overlay"
        sx={{
          position: 'absolute',
          zIndex: 2,
          right: '0%',
          width: '25%',
          minWidth: '250px',
          mr: distanceFromEdge,
          border: 1,
          borderColor: 'primary.main',
          }}>
          {(weather) ? <WeatherCard weather={weather}/> : null}
          {(startSelection &&
            finishSelection &&
            directions &&
            directions.routes[0].legs[0].departure_time &&
            routeSelection &&
            prediction) ? <>
            <JourneyPanelCollapsed
              setCollapseJourneyPanel={setCollapseJourneyPanel}
              collapseJourneyPanel={collapseJourneyPanel}/>
            <JourneyPanel
              startSelection={startSelection}
              departureTime={directions.routes[0].legs[0].departure_time.value}
              finishSelection={finishSelection}
              routeSelection={routeSelection}
              prediction={prediction}
              setCollapseJourneyPanel={setCollapseJourneyPanel}
              collapseJourneyPanel={collapseJourneyPanel}/>
            </> :
            null
          }
         </Box>
        <Map
          startSelection={startSelection}
          finishSelection={finishSelection}
          directions={directions}
          routeSelection={routeSelection}
          userLocation={userLocation}
          busStops={busStops}
          busRoutes={busRoutes}
          setStartSelection={setStartSelection}
          setFinishSelection={setFinishSelection}
          setUserLocation={setUserLocation}
          setRouteSelection={setRouteSelection}
        />
  </Box>;
};

export default DisplayPanel;
