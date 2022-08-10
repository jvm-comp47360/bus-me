// React
import React, {Dispatch, SetStateAction, useState} from 'react';

// Material UI
import {
  Box,
  FormControlLabel,
  Radio,
  RadioGroup,
}
  from '@mui/material';

// Props
import BusStop from '../../../types/BusStop';
import BusRoute from '../../../types/BusRoute';

// Components
import BusStopDropdown from './BusStopsDropdown/BusStopDropdown';
import DateTimeSelection from './DateTimeSelection/DateTimeSelection';
import PlanJourneyButton from "./PlanJourneyButton/PlanJourneyButton";

type DirectionsResult = google.maps.DirectionsResult;

interface Props {
  busRoutes: BusRoute[];
  busStops: BusStop[];
  routeSelection: BusRoute | undefined;
  startSelection: BusStop | undefined;
  setStartSelection: Dispatch<SetStateAction<BusStop | undefined>>;
  finishSelection: BusStop | undefined;
  setFinishSelection: Dispatch<SetStateAction<BusStop | undefined>>;
  dateTimeSelection: Date | undefined;
  setDateTimeSelection: Dispatch<SetStateAction<Date | undefined>>;
  setPrediction: Dispatch<SetStateAction<number | undefined>>;
  setDirections: Dispatch<SetStateAction<DirectionsResult | null>>;
  multiRoute: boolean;
  setPredictionStages: Dispatch<SetStateAction<number[]>>
}

const StopSelectionPanel = ({
                              busRoutes,
                              busStops,
                              routeSelection,
                              startSelection,
                              setStartSelection,
                              finishSelection,
                              setFinishSelection,
                              dateTimeSelection,
                              setDateTimeSelection,
                              setPrediction,
                              setDirections,
                              multiRoute,
                              setPredictionStages,
                            }: Props): JSX.Element => {
  const [arrivalSelected, setArrivalIsSelected] = useState<boolean>(false);
  const toggleArrivalSelected = () => {
    setArrivalIsSelected(!arrivalSelected)
  };

  return <Box display={'flex'}
              flexDirection={'row'}
              flexWrap={'wrap'}
              justifyContent={'center'}
              >
    <Box
      display={'flex'}
      flexDirection={'column'}
      flexWrap={'wrap'}
      justifyContent={'center'}
    >
      <Box m={0.5}>
        <BusStopDropdown
          busRoutes={busRoutes}
          busStops={busStops}
          routeSelection={routeSelection}
          label={'Start'}
          selection={startSelection}
          setSelection={setStartSelection}
          multiRoute={multiRoute}
        />
        <RadioGroup
          name={'toggle-time'}
          value={arrivalSelected}
          onChange={toggleArrivalSelected}
          defaultValue={arrivalSelected}
        >
        </RadioGroup>
      </Box>
      <Box m={0.5}>
        <BusStopDropdown
          busRoutes={busRoutes}
          busStops={busStops}
          routeSelection={routeSelection}
          label={'Finish'}
          selection={finishSelection}
          setSelection={setFinishSelection}
          multiRoute={multiRoute}
        />
      </Box>
    </Box>
    <Box
      display={'flex'}
      flexDirection={'column'}
      flexWrap={'wrap'}
      justifyContent={'center'}
      margin={1}
    >
      <DateTimeSelection
        dateTimeSelection={dateTimeSelection}
        setDateTimeSelection={setDateTimeSelection}
      />
      <RadioGroup
        name={'toggle-time'}
        value={arrivalSelected}
        onChange={toggleArrivalSelected}
        defaultValue={arrivalSelected}
      >
        <Box
          display={'flex'}
          flexDirection={'row'}
          flexWrap={'wrap'}
          justifyContent={'center'}
          margin={1}
        >
          <FormControlLabel control={<Radio size={'small'}/>} label={'Departure'} value={false}/>
          <FormControlLabel control={<Radio size={'small'}/>} label={'Arrival'} value={true}/>
        </Box>
      </RadioGroup>
    </Box>
    <Box
      display={'flex'}
      flexDirection={'column'}
      flexWrap={'wrap'}
      justifyContent={'center'}
    >
      <PlanJourneyButton
        routeSelection={routeSelection}
        startSelection={startSelection}
        finishSelection={finishSelection}
        dateTimeSelection={dateTimeSelection}
        setDateTimeSelection={setDateTimeSelection}
        setPrediction={setPrediction}
        setDirections={setDirections}
        arrivalIsSelected={arrivalSelected}
        multiRoute={multiRoute}
        setPredictionStages={setPredictionStages}
      />
    </Box>
  </Box>;
};

export default StopSelectionPanel;