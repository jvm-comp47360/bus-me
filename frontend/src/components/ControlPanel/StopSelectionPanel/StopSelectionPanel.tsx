// React
import React, {Dispatch, SetStateAction, useState} from 'react';

// Material UI
import {
  Autocomplete,
  AutocompleteRenderInputParams,
  Box,
  FormControlLabel,
  Radio,
  RadioGroup,
  TextField,
  TextFieldProps
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
  routeSelection: BusRoute | undefined;
  startSelection: BusStop | undefined;
  setStartSelection: Dispatch<SetStateAction<BusStop | undefined>>;
  finishSelection: BusStop | undefined;
  setFinishSelection: Dispatch<SetStateAction<BusStop | undefined>>;
  dateTimeSelection: Date | undefined;
  setDateTimeSelection: Dispatch<SetStateAction<Date | undefined>>;
  setPrediction: Dispatch<SetStateAction<number | undefined>>;
  setDirections: Dispatch<SetStateAction<DirectionsResult | null>>;
}

const StopSelectionPanel = ({
                              busRoutes,
                              routeSelection,
                              startSelection,
                              setStartSelection,
                              finishSelection,
                              setFinishSelection,
                              dateTimeSelection,
                              setDateTimeSelection,
                              setPrediction,
                              setDirections,
                            }: Props): JSX.Element => {
  const [arrivalSelected, setArrivalIsSelected] = useState<boolean>(false);
  const toggleArrivalSelected = () => {
    setArrivalIsSelected(!arrivalSelected)
    setDateTimeSelection(new Date())
  };

  return <Box display={'flex'}
              flexDirection={'row'}
              flexWrap={'wrap'}
              justifyContent={'center'}
              margin={1}>
    <Box
      display={'flex'}
      flexDirection={'column'}
      flexWrap={'wrap'}
      justifyContent={'center'}
      margin={1}
    >
      <Box m={0.5}>
        <BusStopDropdown
          busRoutes={busRoutes}
          routeSelection={routeSelection}
          label={'Start'}
          selection={startSelection}
          setSelection={setStartSelection}
        />
      </Box>
      <Box m={0.5}>
        <BusStopDropdown
          busRoutes={busRoutes}
          routeSelection={routeSelection}
          label={'Finish'}
          selection={finishSelection}
          setSelection={setFinishSelection}
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
      margin={1}
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
      />
    </Box>
  </Box>;
};

export default StopSelectionPanel;