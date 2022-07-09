// Components
import WeatherCardInfoItem from './WeatherCardInfoItem/WeatherCardInfoItem';

// Material UI
import {Box, Card, CardContent, CardMedia} from '@mui/material';
import DeviceThermostatIcon from '@mui/icons-material/DeviceThermostat';
import CalendarMonthIcon from '@mui/icons-material/CalendarMonth';
import BookIcon from '@mui/icons-material/Book';

// Types
import Weather from '../../../types/Weather';
import weatherAPI from '../../../mockdata/MOCK_WEATHER.json';
import {useEffect, useState} from "react";

const WeatherCard = (): JSX.Element => {
  // Unpacking API call here because we want to make
  // sure all weather related activity occurs in this
  // component.

  const [weather, setWeather] = useState<Weather>()

  useEffect(() => {
    const getWeather = async () => {
      const api = await fetch('http://ipa-002.ucd.ie:8000/api/current_weather/?format=json');
      console.log(api)
      const data = await api.json() as Weather
      setWeather(data)
      console.log(weather)
    }
    getWeather();
  }, [])

  if (!weather) {
    throw new Error("Weather API error");
  }

  const {icon, date, weatherText, temperature}: Weather = weather;

  return <Card sx={{display: 'inline-block'}}>
    <Box sx={{display: 'flex',
      flexDirection: 'row'}}
    >
      <CardMedia
        component={'img'}
        image={require(`../../../assets/weather-icons/${icon}.png`)}
        alt={'current weather'}
        width={'50'}
        sx={{width: 125,
          padding: 4}}
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
  </Card>;
};

export default WeatherCard;
