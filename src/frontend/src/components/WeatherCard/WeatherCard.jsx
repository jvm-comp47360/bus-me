import {Box, Card, CardContent, CardMedia,
  Typography} from '@mui/material';
import PropTypes from 'prop-types';

const WeatherCard = ({weather}) => {
  // Unpacking API call here because we want to make
  // sure all weather related activity occurs in this
  // component.
  const {icon, date, weatherText, temperature} = weather;

  return <Card sx={{backgroundColor: '#000000'}}
  >
    <Box sx={{display: 'flex', flexDirection: 'row'}}>
      <CardMedia
        component={'img'}
        image={require(`../../assets/weather-icons/${icon}.png`)}
        alt={'current weather'}
        sx={{width: 90, padding: 3}}
      />
      <CardContent>
        <Typography
          sx={{padding: 0.5,
            fontSize: 12,
            color: '#FFFFFF'}}
        >
          {date}
        </Typography>
        <Typography
          sx={{padding: 0.5,
            fontSize: 12,
            color: '#FFFFFF'}}
        >
          {weatherText}!
        </Typography>
        <Typography
          sx={{padding: 0.5,
            fontSize: 12,
            color: '#FFFFFF'}}
        >
          {temperature}°C
        </Typography>
      </CardContent>
    </Box>
  </Card>;
};

export default WeatherCard;

WeatherCard.propTypes = {
  weather: PropTypes.object,
};
