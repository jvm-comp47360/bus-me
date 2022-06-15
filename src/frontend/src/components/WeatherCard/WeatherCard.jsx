import {Card, CardMedia} from '@mui/material';
import PropTypes from 'prop-types';

const WeatherCard = ({icon}) => {
  return <>
    <Card sx={{maxWidth: 345}}
      style={{backgroundColor: '#757DE8'}}
    >
      <CardMedia
        component={'img'}
        image={require(`../../assets/weather-icons/${icon}.png`)}
        alt={'The Weather'}
      />
    </Card>
  </>;
};

export default WeatherCard;

WeatherCard.propTypes = {
  icon: PropTypes.string,
};
