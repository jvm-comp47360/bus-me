import React from 'react'
import {Autocomplete, TextField} from "@mui/material";

const BusStopSelection = ({busStops}) => {


  return <div className={"dropdown-container"}>
      <Autocomplete
        getOptionLabel={(option) => `${option.name}, Stop No.${option.number}`}
        options={busStops}
        sx={{ width: 300 }}
        renderInput={(params) => <TextField {...params} label={"Start"} />}
      />
      <Autocomplete
        getOptionLabel={(option) => `${option.name}, Stop No.${option.number}`}
        options={busStops}
        sx={{ width: 300 }}
        renderInput={(params) => <TextField {...params} label={"Finish"} />}
      />
  </div>
}

export default BusStopSelection