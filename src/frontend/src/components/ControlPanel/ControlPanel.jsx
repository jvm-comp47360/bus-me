import React from 'react'
import BusStopSelection from "./BusStopSelection/BusStopSelection";
import Button from '@mui/material/Button';

const ControlPanel = ({busStops}) => {
  return <div className={"control-panel"}>
    <h1 className={"splash-header"}>Where Do You Want To Go?</h1>
    <p className={"splash-subheader"}>Select a start station and a destination station, and we will give you a realistic estimate of how
      long your journey is going to take.</p>
    <BusStopSelection busStops={busStops}/>
    <Button variant={"contained"}>BusMe!</Button>

  </div>
}

export default ControlPanel