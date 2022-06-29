import {Autocomplete, TextField} from '@mui/material';
import React, {Dispatch, SetStateAction, useEffect, useState} from 'react';

type BusStop = {
  id: string;
  name: string;
  number: number;
  latitude: string;
  longitude: string;
}

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
      onInputChange={(e, v) => setInputValue(v)}
      onChange={changeHandler}
      getOptionLabel={(option) => `${option.name}, Stop No.${option.number}`}
      options={busStops}
      sx={{width: 300}}
      renderInput={(params) => <TextField {...params} label={label}/>}
    />
  </>;
};

export default BusStopDropdown;
