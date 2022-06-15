import {Card, CardMedia, Stack, Typography} from '@mui/material';
import PropTypes from 'prop-types';

const WeatherCard = ({icon, date}) => {
  return <Card
    sx={{backgroundColor: '#757DE8', display: 'inline-block'}}
  >
    <Stack
      display={'flex'}
      flexDirection={'column'}
      alignItems={'center'}
      margin={1}
      spacing={1}
    >
      <CardMedia
        component={'img'}
        image={require(`../../../assets/weather-icons/${icon}.png`)}
        alt={'current weather'}
        sx={{width: 80}}
      />
      <Typography
        sx={{padding: 0.5}}
        fontSize={12}
        color={'#FFFFFF'}
      >
        {date}
      </Typography>
    </Stack>
  </Card>;
};

export default WeatherCard;

WeatherCard.propTypes = {
  icon: PropTypes.string,
  date: PropTypes.string,
};
