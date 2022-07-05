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
  return <Box sx={{position: 'relative', zIndex: 0}}>
    <Box sx={{
      position: 'absolute',
      zIndex: 1,
      top: '5%',
      left: '7%',
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
    />
  </Box>;
};

export default DisplayPanel;
