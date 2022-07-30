import JourneyLegStop from "./JourneyLegStop";
import JourneyLegInfo from "./JourneyLegInfo";

import BusStop from '../../../../types/BusStop'
import BusRoute from '../../../../types/BusRoute';

import {Grid} from '@mui/material';

interface Props {
    startSelection: BusStop,
    departureTime: Date,
    finishSelection: BusStop,
    routeSelection: BusRoute | undefined,
    prediction: number,
    directions: google.maps.DirectionsResult | null,
}

const JourneyLeg = ({
    startSelection, 
    departureTime, 
    finishSelection,
    routeSelection,
    prediction, directions}: Props): JSX.Element => {

    const getArrivalTime = (depatureTime: Date, prediction: number): Date => {
        const startUnixTime: number = depatureTime.getTime();
        const predictionInMillisecs: number = prediction * 60 * 1000;
        return new Date(startUnixTime + predictionInMillisecs);
    }

    return <Grid 
            container
            sx={{
                my: 1,
            }}>
        <JourneyLegStop 
            stopSelection={startSelection}
            time={departureTime} 
        />
        {(routeSelection) ?
          <>
          <JourneyLegInfo
            routeSelection={routeSelection}
            prediction={prediction}/>
          <JourneyLegStop
            stopSelection={finishSelection}
            time={getArrivalTime(departureTime, prediction)}
          />
          </> : null
        }
        {(!routeSelection && directions) ?
          directions.routes[0].legs[0].steps.map((step: google.maps.DirectionsStep) => {
          if (step.travel_mode !== 'TRANSIT') {
              return <></>
          }
          return <>
              <JourneyLegInfo
                routeSelection={(step.transit) ? step.transit.line.short_name : ''}
                prediction={prediction}/>
              <JourneyLegStop
                stopSelection={(step.transit) ? step.transit.arrival_stop.name : ''}
                time={getArrivalTime(departureTime, prediction)}
              />
          </>})
          : null}
    </Grid>
};

export default JourneyLeg;