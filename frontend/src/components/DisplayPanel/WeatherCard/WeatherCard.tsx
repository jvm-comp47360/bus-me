// Material UI
import {Box, Card, CardContent, CardMedia, Typography} from '@mui/material';
import {styled} from "@mui/material/styles";

// Types
import Weather from '../../../types/Weather';

interface Props {
  weather: Weather;
}

const CardContentNoPadding = styled(CardContent)(`
  padding: 0;
  &:last-child {
    padding-bottom: 0;
  }
`);

const WeatherCard = ({weather}: Props): JSX.Element => {

  const {icon, date, weatherText, temperature}: Weather = weather;

  return <Box sx={{
    position: 'absolute',
    zIndex: 1,
    right: '0%',
    width: '25%',
    minWidth: '175px',
  }}>
    <Card sx={{
        backgroundColor: '#3F51B5',
        display: 'flex',
        alignItems: 'center',
        justifyContent: 'center'
        }}>
        <CardMedia
          component={'img'}
          image={require(`../../../assets/weather-icons/${icon}.png`)}
          alt={'current weather'}
          sx={{
            width: 35,
            mr: 1,
          }}
        />
        <CardContentNoPadding>
          <Typography variant='body2'>
            {weatherText} {temperature.substring(0,2)}°C
          </Typography>
        </CardContentNoPadding>
    </Card>
  </Box>
};

export default WeatherCard;
