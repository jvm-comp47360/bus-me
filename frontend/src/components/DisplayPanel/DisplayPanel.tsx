import {Dispatch, SetStateAction} from 'react';

import {Box} from '@mui/material';

import BusStop from '../../types/BusStop';

import WeatherCard from './WeatherCard/WeatherCard';
import ResultsCard from './ResultsCard/ResultsCard';
import Map from './Map/Map';

interface Props {
    prediction: number | undefined,
    startSelection: BusStop | undefined,
    finishSelection: BusStop | undefined,
    setPrediction: Dispatch<SetStateAction<number | undefined>>,
}

const DisplayPanel = ({
  prediction,
  startSelection,
  finishSelection,
  setPrediction,
}: Props): JSX.Element => {
  return <Box>
    <WeatherCard />
    {(prediction) ?
    <ResultsCard
      duration={prediction}
      setPrediction={setPrediction}/> :
    null}
    <Map
      startSelection={startSelection}
      finishSelection={finishSelection}
    />
  </Box>;
};

export default DisplayPanel;
