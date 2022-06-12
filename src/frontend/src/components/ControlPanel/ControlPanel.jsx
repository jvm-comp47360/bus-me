import React, {useState} from 'react'
import BusStopSelection from "./BusStopSelection/BusStopSelection";
import Button from '@mui/material/Button';
import {Stack} from "@mui/material";

const ControlPanel = ({busStops}) => {

  const [startId, setStartId] = useState("")
  const [finishId, setFinishId] = useState("")

  const buttonDisableHandler = () => startId === "" || finishId === "";

  return <div className={"control-panel"}>
    <h1 className={"splash-header"}>Where Do You Want To Go?</h1>
    <p className={"splash-subheader"}>Select a start station and a destination station, and we will give you a realistic estimate of how
      long your journey is going to take.</p>

    <Stack direction={"row"} spacing={2} justifyContent={"center"}>
      <BusStopSelection busStops={busStops} label={"Start"} setId={setStartId}/>
      <BusStopSelection busStops={busStops} label={"Finish"} setId={setFinishId}/>
    </Stack>

    <Button variant={"contained"} disabled={buttonDisableHandler()}>BusMe!</Button>
  </div>
}

export default ControlPanel