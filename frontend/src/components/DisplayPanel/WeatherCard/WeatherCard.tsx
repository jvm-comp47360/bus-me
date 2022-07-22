// Components
import WeatherCardInfoItem from './WeatherCardInfoItem/WeatherCardInfoItem';

// Material UI
import {Box, Card, CardContent, CardMedia} from '@mui/material';
import DeviceThermostatIcon from '@mui/icons-material/DeviceThermostat';
import CalendarMonthIcon from '@mui/icons-material/CalendarMonth';
import BookIcon from '@mui/icons-material/Book';

// Types
import Weather from '../../../types/Weather';

interface Props {
  weather: Weather;
}

const WeatherCard = ({weather}: Props): JSX.Element => {

  const {icon, date, weatherText, temperature}: Weather = weather;

  return <Box sx={{
    position: 'absolute',
    zIndex: 1,
    top: '5%',
    left: '15%',
  }}>
    <Card sx={{display: 'inline-block'}}>
      <Box sx={{display: 'flex',
        flexDirection: 'row'}}
      >
        <CardMedia
          component={'img'}
          image={require(`../../../assets/weather-icons/${icon}.png`)}
          alt={'current weather'}
          width={'50'}
          sx={{width: 120}}
        />
        <CardContent sx={{pt: 2.7,
          alignItems: 'center'}}
        >
          <WeatherCardInfoItem
            icon={<CalendarMonthIcon sx={{color: '#FFFFFF'}}/>}
            text={date}
          />
          <WeatherCardInfoItem
            icon={<BookIcon sx={{color: '#FFFFFF'}}/>}
            text={weatherText}
          />
          <WeatherCardInfoItem
            icon={<DeviceThermostatIcon sx={{color: '#FFFFFF'}}/>}
            text={`${temperature.substring(0,2)}°C`}
          />
        </CardContent>
      </Box>
    </Card>
  </Box>
};

export default WeatherCard;
