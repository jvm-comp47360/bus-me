import {
  Box, Card, CardContent, CardMedia, Grid,
  Typography,
} from '@mui/material';
import PropTypes from 'prop-types';
import {FaTemperatureLow} from 'react-icons/fa';
import {AiFillCalendar, AiFillBook} from 'react-icons/ai';


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
        <Grid container direction={'row'} alignItems={'center'}>
          <Grid item>
            <AiFillCalendar color={'white'}/>
          </Grid>
          <Grid item>
            <Typography
              sx={{padding: 0.5,
                fontSize: 12,
                color: '#FFFFFF'}}
            >
              {date}
            </Typography>
          </Grid>
        </Grid>

        <Grid container direction={'row'} alignItems={'center'}>
          <Grid item>
            <AiFillBook color={'white'}/>
          </Grid>
          <Grid item>
            <Typography
              sx={{padding: 0.5,
                fontSize: 12,
                color: '#FFFFFF'}}
            >
              {weatherText}
            </Typography>
          </Grid>
        </Grid>

        <Grid container direction={'row'} alignItems={'center'}>
          <Grid item>
            <FaTemperatureLow color={'white'}/>
          </Grid>
          <Grid item>
            <Typography
              sx={{padding: 0.5,
                fontSize: 12,
                color: '#FFFFFF'}}
            >
              {temperature}°C
            </Typography>
          </Grid>
        </Grid>
      </CardContent>
    </Box>
  </Card>;
};

export default WeatherCard;

WeatherCard.propTypes = {
  weather: PropTypes.object,
};
