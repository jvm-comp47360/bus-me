import {Grid, Typography} from '@mui/material';
import {ReactElement} from 'react';

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
      <Typography
        sx={{padding: 0.5,
          fontSize: 12,
          color: '#FFFFFF'}}
      >
        {text}
      </Typography>
    </Grid>
  </Grid>;
};

export default WeatherCardInfoItem;
