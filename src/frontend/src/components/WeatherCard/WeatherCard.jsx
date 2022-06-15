import {Card, Stack} from '@mui/material';
import PropTypes from 'prop-types';
import WeatherContent from './WeatherContent/WeatherContent';


const WeatherCard = ({weather}) => {
  return <Card
    sx={{backgroundColor: '#757DE8', display: 'inline-block'}}
  >
    <Stack direction={'row'}>
      {weather.map((day) => {
        return (<>
          <WeatherContent icon={day.icon} date={day.date}/>
          <hr/>
        </>);
      })}
    </Stack>
  </Card>;
};

export default WeatherCard;

WeatherCard.propTypes = {
  weather: PropTypes.arrayOf(PropTypes.object),
};
