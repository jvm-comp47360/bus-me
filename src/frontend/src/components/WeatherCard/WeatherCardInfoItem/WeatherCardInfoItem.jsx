import {Grid, Typography} from '@mui/material';
import PropTypes from 'prop-types';

const WeatherCardInfoItem = ({icon, text}) => {
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

WeatherCardInfoItem.propTypes = {
  icon: PropTypes.object,
  text: PropTypes.string,
};
