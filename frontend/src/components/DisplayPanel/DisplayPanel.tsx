import {Dispatch, SetStateAction, useState} from 'react';

import {Box} from '@mui/material';

import BusStop from '../../types/BusStop';

import WeatherCard from './WeatherCard/WeatherCard';
import ResultsCard from './ResultsCard/ResultsCard';
import Map from './Map/Map';

type DirectionsResult = google.maps.DirectionsResult;

interface Props {
    prediction: number | undefined,
    startSelection: BusStop | undefined,
    finishSelection: BusStop | undefined,
    directions: DirectionsResult | null,
    setPrediction: Dispatch<SetStateAction<number | undefined>>,
}

const DisplayPanel = ({
  prediction,
  startSelection,
  finishSelection,
  directions,
  setPrediction,
}: Props): JSX.Element => {

  return <Box sx={{position: 'relative', zIndex: 0}}>
    <Box sx={{
      position: 'absolute',
      zIndex: 1,
      top: '5%',
      left: '15%',
    }}>
      <WeatherCard />
    </Box>
    {(prediction) ?
    <Box sx={{
      position: 'absolute',
      zIndex: 1,
      top: '25%',
      left: '33%',
    }}>
      <ResultsCard
        duration={prediction}
        setPrediction={setPrediction}/>
    </Box> :
    null}
    <Map
      startSelection={startSelection}
      finishSelection={finishSelection}
      directions={directions}
    />
  </Box>;
};

export default DisplayPanel;
