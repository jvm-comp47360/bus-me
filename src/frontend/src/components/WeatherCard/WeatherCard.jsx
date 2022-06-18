import {Box, Card, CardContent, CardMedia} from '@mui/material';
import PropTypes from 'prop-types';
import {FaTemperatureLow} from 'react-icons/fa';
import {AiFillCalendar, AiFillBook} from 'react-icons/ai';
import WeatherCardInfoItem from './WeatherCardInfoItem/WeatherCardInfoItem';


const WeatherCard = ({weather}) => {
  // Unpacking API call here because we want to make
  // sure all weather related activity occurs in this
  // component.
  const {icon, date, weatherText, temperature} = weather;

  return <Card sx={{backgroundColor: '#757DE8', display: 'inline-block'}}
  >
    <Box sx={{display: 'flex', flexDirection: 'row'}}>
      <CardMedia
        component={'img'}
        image={require(`../../assets/weather-icons/${icon}.png`)}
        alt={'current weather'}
        width={'52'}
        sx={{width: 102, padding: 2}}
      />
      <CardContent sx={{pt: 2.7, alignItems: 'center'}}>
        <WeatherCardInfoItem
          icon={<AiFillCalendar color={'#FFFFFF'}/>}
          text={date}
        />
        <WeatherCardInfoItem
          icon={<AiFillBook color={'#FFFFFF'}/>}
          text={weatherText}
        />
        <WeatherCardInfoItem
          icon={<FaTemperatureLow color={'#FFFFFF'}/>}
          text={temperature}
        />
      </CardContent>
    </Box>
  </Card>;
};

export default WeatherCard;

WeatherCard.propTypes = {
  weather: PropTypes.object,
};
