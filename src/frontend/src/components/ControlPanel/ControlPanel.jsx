import React, {useState} from 'react'
import Button from '@mui/material/Button';
import {Autocomplete, Stack, TextField} from "@mui/material";

const ControlPanel = ({busStops}) => {

  const [startId, setStartId] = useState("")
  const [finishId, setFinishId] = useState("")

  const buttonDisableHandler = () => startId === "" || finishId === "";

  const renderSplashText = () => {
    return <>
      <h1 className={"splash-header"}>Where Do You Want To Go?</h1>
      <p className={"splash-subheader"}>Select a start station and a destination station, and we will give you a
        realistic estimate of how
        long your journey is going to take.</p>
    </>;
  }

  const renderDropdowns = () => {
    return <Stack direction={"row"} spacing={2} justifyContent={"center"}>
      <Autocomplete
        getOptionLabel={(option) => `${option.name}, Stop No.${option.number}`}
        options={busStops}
        sx={{width: 300}}
        renderInput={(params) => <TextField {...params} label={"Start"}/>}
        onChange={(option, value) => setStartId(value.id)}
      />
      <Autocomplete
        getOptionLabel={(option) => `${option.name}, Stop No.${option.number}`}
        options={busStops}
        sx={{width: 300}}
        renderInput={(params) => <TextField {...params} label={"Finish"}/>}
        onChange={(option, value) => setFinishId(value.id)}
      />
    </Stack>;
  }

  const renderSubmitButton = () => {
    return <Button
      variant={"contained"}
      disabled={buttonDisableHandler()}
      data-testid={"submit-button"}
    >
      BusMe!
    </Button>;
  }

  return <div className={"control-panel"}>
    {renderSplashText()}
    {renderDropdowns()}
    {renderSubmitButton()}
  </div>
}

export default ControlPanel