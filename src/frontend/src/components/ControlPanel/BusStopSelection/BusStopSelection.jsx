import React from 'react'
import {Autocomplete, TextField} from "@mui/material";

const BusStopSelection = ({busStops, label, setId}) => {

  const onChangeHandler = (option, value) => setId(value.id)

  return <>
      <Autocomplete
        getOptionLabel={(option) => `${option.name}, Stop No.${option.number}`}
        options={busStops}
        sx={{ width: 300 }}
        renderInput={(params) => <TextField {...params} label={label} />}
        onChange={onChangeHandler}
      />
  </>
}

export default BusStopSelection