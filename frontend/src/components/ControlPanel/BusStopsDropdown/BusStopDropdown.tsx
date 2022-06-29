// React
import React, {Dispatch, SetStateAction,
  SyntheticEvent, useEffect, useState} from 'react';

// Material UI
import {Autocomplete, AutocompleteRenderInputParams, TextField}
  from '@mui/material';

// Props
import BusStop from '../../../types/BusStop';

interface Props {
  busStops: BusStop[];
  setBusStops: Dispatch<SetStateAction<BusStop[]>>
  label: string;
  selection: BusStop | null;
  setSelection: Dispatch<SetStateAction<BusStop | null>>;
}

const BusStopDropdown = ({
  busStops,
  label,
  setSelection,
}: Props): JSX.Element => {
  const [inputValue, setInputValue] = useState<string>('blah');
  const clearInputValue = () => setInputValue('blah');

  // Resetting input if the route has been changed.
  useEffect(() => {
    clearInputValue();
  }, []);

  const changeHandler = (
      event: React.SyntheticEvent<Element, Event>,
      value: BusStop | null,
  ) => {
    if (value) {
      setSelection(value);
    } else {
      throw new Error('Something has gone wrong with the route naming.');
    }
  };

  return <>
    <Autocomplete
      inputValue={inputValue}
      onInputChange={(e: SyntheticEvent, v: string) => setInputValue(v)}
      onChange={changeHandler}
      getOptionLabel={(option: BusStop) =>
        `${option.name}, Stop No.${option.number}`}
      options={busStops}
      sx={{width: 300}}
      renderInput={(params: AutocompleteRenderInputParams) =>
        <TextField {...params} label={label}/>}
    />
  </>;
};

export default BusStopDropdown;
