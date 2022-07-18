import {Dispatch, SetStateAction, useEffect, useState} from 'react';

import {Box} from '@mui/material';

import BusStop from '../../types/BusStop';
import BusRoute from '../../types/BusRoute';

import WeatherCard from './WeatherCard/WeatherCard';
import ResultsCard from './ResultsCard/ResultsCard';
import Map from './Map/Map';
import Weather from "../../types/Weather";

type DirectionsResult = google.maps.DirectionsResult;

interface Props {
    prediction: number | undefined,
    startSelection: BusStop | undefined,
    finishSelection: BusStop | undefined,
    directions: DirectionsResult | null,
    routeSelection: BusRoute | undefined,
    setPrediction: Dispatch<SetStateAction<number | undefined>>,
}

const DisplayPanel = ({
  prediction,
  startSelection,
  finishSelection,
  directions,
  routeSelection,
  setPrediction,
}: Props): JSX.Element => {
  // Icon credit: https://github.com/yuvraaaj/openweathermap-api-icons
  const [weather, setWeather] = useState<Weather>()

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

  return <Box sx={{position: 'relative', zIndex: 0}}>
    {(weather) ? <WeatherCard weather={weather}/> : null}
    {(prediction) ?
      <ResultsCard
        duration={prediction}
        setPrediction={setPrediction}/>
      : null
    }
    <Map
      startSelection={startSelection}
      finishSelection={finishSelection}
      directions={directions}
      routeSelection={routeSelection}
    />
  </Box>;
};

export default DisplayPanel;
