import {Box, Button, Typography} from '@mui/material';
import GraphDialogButton from "./GraphDialogButton/GraphDialogButton";
import BusStop from "../../../../types/BusStop";
import BusRoute from "../../../../types/BusRoute";

interface Props {
    startSelection: BusStop,
    finishSelection: BusStop,
    prediction: number,
}

const AnalyticsPanel = ({startSelection,
                            finishSelection,
                            prediction}: Props): JSX.Element => {
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
          prediction={prediction}
          graphPredictions={[2, 1, 4, 3]}
        />
    </Box>)
};

export default AnalyticsPanel;