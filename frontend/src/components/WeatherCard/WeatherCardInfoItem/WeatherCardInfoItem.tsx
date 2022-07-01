// React
import {ReactElement} from 'react';

// Material UI
import {Grid, Typography} from '@mui/material';

interface Props {
  icon: ReactElement;
  text: string;
}

const WeatherCardInfoItem = ({icon, text}: Props): JSX.Element => {
  return <Grid container direction={'row'} alignItems={'center'}>
    <Grid item>
      {icon}
    </Grid>
    <Grid item>
      <Typography variant='body2' sx={{padding: 0.5}}>
        {text}
      </Typography>
    </Grid>
  </Grid>;
};

export default WeatherCardInfoItem;
