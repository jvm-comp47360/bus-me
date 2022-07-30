import {Box, Button, Typography} from '@mui/material';
import GraphDialogButton from "./GraphDialogButton/GraphDialogButton";
import BusStop from "../../../../types/BusStop";
import BusRoute from "../../../../types/BusRoute";
import {Dispatch, SetStateAction} from "react";

interface Props {
  routeSelection: BusRoute | undefined,
    startSelection: BusStop,
    finishSelection: BusStop,
    prediction: number,
    predictionList: number[],
  setPredictionList: Dispatch<SetStateAction<number[]>>,
  directions: google.maps.DirectionsResult | null,
  dateTimeSelection: Date,
}

const AnalyticsPanel = ({routeSelection,
                          startSelection,
                            finishSelection,
                            prediction,
                        predictionList,
                        setPredictionList,
                          directions, dateTimeSelection}: Props): JSX.Element => {
    return (<Box sx={{
        borderTop: 1,
        display: 'flex',
        flexDirection: 'column',
        alignItems: 'center',
        borderColor: 'primary.main',
    }}>
        <Typography 
            variant='body1'
            sx={{
                mt: 1,
                textAlign: 'justify'}}>
            Plan your day better by viewing the difference 
            in travel times throughout the day!
        </Typography>
        <GraphDialogButton
          routeSelection={routeSelection}
          startSelection={startSelection}
          finishSelection={finishSelection}
          prediction={prediction}
          predictionList={predictionList}
          setPredictionList={setPredictionList}
          directions={directions}
          dateTimeSelection={dateTimeSelection}
        />
    </Box>)
};

export default AnalyticsPanel;