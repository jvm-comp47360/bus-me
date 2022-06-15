import {CardMedia, Stack, Typography} from '@mui/material';
import PropTypes from 'prop-types';

const WeatherContent = ({icon, date}) => {
  return <Stack
    display={'flex'}
    flexDirection={'column'}
    alignItems={'center'}
    margin={1}
    spacing={1}
  >
    <CardMedia
      component={'img'}
      image={require(`../../assets/weather-icons/${icon}.png`)}
      alt={'The Weather'}
      sx={{width: 80}}
    />
    <Typography
      sx={{padding: 0.5}}
      fontSize={12}
      color={'#FFFFFF'}
    >
      {date}
    </Typography>
  </Stack>;
};

export default WeatherContent;

WeatherContent.propTypes = {
  icon: PropTypes.string,
  date: PropTypes.string,
};
