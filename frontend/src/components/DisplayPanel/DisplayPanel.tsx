import {Dispatch, SetStateAction, useEffect, useState} from 'react';

import {Box} from '@mui/material';

import useMediaQuery from '@mui/material/useMediaQuery';

import BusStop from '../../types/BusStop';
import BusRoute from '../../types/BusRoute';
import Weather from '../../types/Weather';

import WeatherCard from './WeatherCard/WeatherCard';
import Map from './Map/Map';
import JourneyPanel from './JourneyPanel/JourneyPanel';
import JourneyPanelCollapsed from
  './JourneyPanelCollapsed/JourneyPanelCollapsed';

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
    setDirections: Dispatch<SetStateAction<DirectionsResult | null>>;
    multiRoute: boolean;
    predictionStages: number[];
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
  setDirections,
  multiRoute,
  predictionStages,
}: Props): JSX.Element => {
  // Icon credit: https://github.com/yuvraaaj/openweathermap-api-icons
  const [weather, setWeather] = useState<Weather>();
  const [collapseJourneyPanel, setCollapseJourneyPanel] =
    useState<boolean>(false);
  const [userLocation, setUserLocation] =
    useState<google.maps.LatLngLiteral>({lat: 53.34740, lng: -6.25914});

  const distanceFromEdge = 2;

  // Variable for checking if user is on mobile for responsivness.
  const phoneScreenIsOff = useMediaQuery('(min-width:600px');

  // Get current weather from backend API
  useEffect(() => {
    fetch('https://ipa-002.ucd.ie/api/current_weather/')
        .then((response) => {
          if (response.ok) {
            return response.json() as Promise<Weather>;
          } else {
            throw new Error();
          }
        })
        .then(setWeather)
        .catch((error) => console.log(error));
  }, []);

  useEffect(() => {
    if (directions && !multiRoute) {
      const updateRouteSelection = (returnedRoute: string): void => {
        if (startSelection && finishSelection) {
          const busRouteMatches: BusRoute[] = busRoutes.filter((route) => {
            return route.name.includes(returnedRoute) &&
            Boolean(route.bus_stops.find((stop) =>
              stop.id === startSelection.id));
          });
          if (busRouteMatches) setRouteSelection(busRouteMatches[0]);
        }
      };

      const steps = directions.routes[0].legs[0].steps;
      const transitStep =
        steps.filter((step) => step.travel_mode === 'TRANSIT')[0];
      const returnedRoute = transitStep.transit?.line.short_name;
      if (!returnedRoute) return;
      if (busRoutes &&
        returnedRoute &&
        routeSelection &&
        returnedRoute !== routeSelection.name) {
        updateRouteSelection(returnedRoute);
      }
    }
  }, [directions]);

  return <Box
    sx={{
      position: 'relative',
      zIndex: 0,
      px: distanceFromEdge,
    }}>
    <Box
      display={phoneScreenIsOff ? undefined : 'flex'}
      justifyContent={phoneScreenIsOff ? undefined : 'center'}
    >
      <Box
        id="overlay"
        sx={{
          position: 'absolute',
          zIndex: 2,
          right: phoneScreenIsOff ? '0%' : undefined,
          width: '25%',
          minWidth: '250px',
          top: phoneScreenIsOff ? undefined : '9%',
          mr: phoneScreenIsOff ? distanceFromEdge : undefined,
          border: 1,
          borderColor: 'primary.main',
        }}>
        {(weather) ? <WeatherCard weather={weather}/> : null}
        {(startSelection &&
          finishSelection &&
          directions &&
          directions.routes[0].legs[0].departure_time &&
          prediction && (routeSelection || multiRoute)) ? <>
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
              collapseJourneyPanel={collapseJourneyPanel}
              directions={directions}
              predictionStages={predictionStages}
            />
          </> :
          null
        }
      </Box>
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
      setDirections={setDirections}
      multiRoute={multiRoute}
    />
  </Box>;
};

export default DisplayPanel;
