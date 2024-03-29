import BusRoute from '../../../../../types/BusRoute';

import {Box, Grid, Typography} from '@mui/material';

interface Props {
    routeSelection: BusRoute | string | undefined,
    prediction: number,
}

const JourneyLegInfo = ({routeSelection, prediction}: Props): JSX.Element => {
  const getPredictionString = (prediction: number): string => {
    // Adding correct formatting for the prediction display.
    if (prediction < 60) return `${prediction}m`;
    else if (prediction < 120) {
      if (prediction === 60) return '1h';
      else return `1h ${prediction - 60}m`;
    } else {
      if (prediction === 120) return '2h';
      else return `2h ${prediction - 120}m`;
    }
  };

  const getRouteDisplay = (routesForDisplay: BusRoute | string | undefined) => {
    // Extract correct route display name
    // based on the type that has been passed in
    if (!routesForDisplay) {
      return '';
    }
    if (typeof routesForDisplay === 'string') {
      return routesForDisplay;
    }
    return routesForDisplay.name.split(' ')[0];
  };

  return <Grid
    item
    container
    sx={{my: 1}}>
    <Grid
      item
      xs={2}
      sx={{
        display: 'flex',
        justifyContent: 'center',
        alignItems: 'center',
      }}>
      <Typography sx={{
        fontSize: '0.9rem',
        color: 'gray',
      }}>{getPredictionString(prediction)}</Typography>
    </Grid>
    <Grid
      item
      xs={10}
    >
      <Box sx={{
        ml: 2,
        p: 1,
        borderRadius: '5px',
        backgroundColor: 'red',
        color: 'white',
        width: (routeSelection && !Array.isArray(routeSelection))?'15%':'60%',
        minWidth: '10px',
        textAlign: 'center',
      }}>
        {getRouteDisplay(routeSelection)}
      </Box>
    </Grid>
  </Grid>;
};

export default JourneyLegInfo;
