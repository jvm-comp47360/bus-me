import {Card} from '@mui/material';
import PropTypes from 'prop-types';
import WeatherContent from './WeatherContent/WeatherContent';


const WeatherCard = ({icon, date}) => {
  return <Card
    sx={{backgroundColor: '#757DE8', display: 'inline-block'}}
  >
    <WeatherContent icon={icon} date={date}/>
  </Card>;
};

export default WeatherCard;

WeatherCard.propTypes = {
  icon: PropTypes.string,
  date: PropTypes.string,
};
