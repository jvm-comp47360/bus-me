// Components
import WeatherCardInfoItem from './WeatherCardInfoItem/WeatherCardInfoItem';

// Material UI
import {Box, Card, CardContent, CardMedia, Container} from '@mui/material';
import DeviceThermostatIcon from '@mui/icons-material/DeviceThermostat';
import CalendarMonthIcon from '@mui/icons-material/CalendarMonth';
import BookIcon from '@mui/icons-material/Book';

// Types
import Weather from '../../types/Weather';
import weatherAPI from '../../mockdata/MOCK_WEATHER.json';

const WeatherCard = (): JSX.Element => {
  // Unpacking API call here because we want to make
  // sure all weather related activity occurs in this
  // component.

  const {icon, date, weatherText, temperature}: Weather = weatherAPI[0];

  return <Box sx={{
    position: 'absolute',
    zIndex: 1,
    margin: 2,
  }}>
    <Card sx={{display: 'inline-block'}}>
      <Box sx={{display: 'flex',
        flexDirection: 'row'}}
      >
        <CardMedia
          component={'img'}
          image={require(`../../assets/weather-icons/${icon}.png`)}
          alt={'current weather'}
          width={'50'}
          sx={{width: 115,
            padding: 2}}
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
            text={`${temperature}°C`}
          />
        </CardContent>
      </Box>
    </Card>
  </Box>;
};

export default WeatherCard;
