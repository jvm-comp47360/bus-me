import {Dispatch, SetStateAction, useEffect, useState} from 'react';

import {Box} from '@mui/material';

import BusStop from '../../types/BusStop';
import BusRoute from '../../types/BusRoute';
import Weather from "../../types/Weather";

import WeatherCard from './WeatherCard/WeatherCard';
import ResultsCard from './ResultsCard/ResultsCard';
import Map from './Map/Map';
import JourneyPanel from './JourneyPanel/JourneyPanel';

import mockData from '../../mockdata/MOCK_BUS_ROUTES.json';

type DirectionsResult = google.maps.DirectionsResult;

interface Props {
    prediction: number | undefined,
    startSelection: BusStop | undefined,
    finishSelection: BusStop | undefined,
    directions: DirectionsResult | null,
    routeSelection: BusRoute | undefined,
    setPrediction: Dispatch<SetStateAction<number | undefined>>,
    setStartSelection: Dispatch<SetStateAction<BusStop | undefined>>,
    setFinishSelection: Dispatch<SetStateAction<BusStop | undefined>>
}

const DisplayPanel = ({
  prediction,
  startSelection,
  finishSelection,
  directions,
  routeSelection,
  setPrediction,
  setStartSelection,
  setFinishSelection,
}: Props): JSX.Element => {
  // Icon credit: https://github.com/yuvraaaj/openweathermap-api-icons
  const [weather, setWeather] = useState<Weather>();

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
        zIndex: 1,
        right: '0%',
        width: '25%',
        minWidth: '250px',
        mr: distanceFromEdge,
        border: 1,
        borderColor: 'primary.main',
        }}>
        {(weather) ? <WeatherCard weather={weather}/> : null}
        {(prediction) ?
          <ResultsCard
            duration={prediction}
            setPrediction={setPrediction}/>
          : null
        }
        {(directions && directions.routes[0].legs[0].departure_time) ? /* && prediction */
        <JourneyPanel 
          startSelection={mockData[0].bus_stops[0]}
          departureTime={directions.routes[0].legs[0].departure_time.value}
          finishSelection={mockData[0].bus_stops[1]}
          routeSelection={mockData[0]}
          prediction={24.8}/>
          : null
        }
       </Box>
        <Map
          startSelection={startSelection}
          finishSelection={finishSelection}
          directions={directions}
          routeSelection={routeSelection}
          setStartSelection={setStartSelection}
          setFinishSelection={setFinishSelection}
        />
  </Box>;
};

export default DisplayPanel;
