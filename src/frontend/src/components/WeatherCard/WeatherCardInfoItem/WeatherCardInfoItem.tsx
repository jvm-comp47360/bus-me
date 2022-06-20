import {Grid, Typography} from '@mui/material';
import {FC, ReactElement} from 'react';

export type Props = {
  icon: ReactElement;
  text: string;
}

const WeatherCardInfoItem: FC<Props> = ({icon, text}): ReactElement => {
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
