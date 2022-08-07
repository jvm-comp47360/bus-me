import {Box, Button, Typography} from '@mui/material';
import GraphDialogButton from "./GraphDialogButton/GraphDialogButton";
import BusStop from "../../../../types/BusStop";
import BusRoute from "../../../../types/BusRoute";

interface Props {
    startSelection: BusStop,
    finishSelection: BusStop,
    routeSelection: BusRoute | undefined,
    prediction: number,
    dateTimeSelection: Date,
    directions: google.maps.DirectionsResult | null,
}

const AnalyticsPanel = ({startSelection,
                            finishSelection,
                            routeSelection,
                            prediction,
                            dateTimeSelection,
                        directions}: Props): JSX.Element => {
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
          startSelection={startSelection}
          finishSelection={finishSelection}
          routeSelection={routeSelection}
          prediction={prediction}
          dateTimeSelection={dateTimeSelection}
          directions={directions}
        />
    </Box>)
};

export default AnalyticsPanel;