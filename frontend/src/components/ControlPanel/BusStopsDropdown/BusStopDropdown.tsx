import {Autocomplete, TextField} from '@mui/material';
import React, {Dispatch, SetStateAction} from 'react';

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
      onChange={changeHandler}
      getOptionLabel={(option) => `${option.name}, Stop No.${option.number}`}
      options={busStops}
      sx={{width: 300}}
      renderInput={(params) => <TextField {...params} label={label}/>}
    />
  </>;
};

export default BusStopDropdown;
