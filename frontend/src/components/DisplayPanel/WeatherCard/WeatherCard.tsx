// Material UI
import {Card, CardContent, CardMedia, Typography} from '@mui/material';
import {styled} from '@mui/material/styles';

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
  const {icon, weatherText, temperature}: Weather = weather;

  return <Card sx={{
    backgroundColor: 'primary.main',
    display: 'flex',
    alignItems: 'center',
    justifyContent: 'center',
    borderRadius: 0,
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
        {weatherText} {temperature.substring(0, 2)}°C
      </Typography>
    </CardContentNoPadding>
  </Card>;
};

export default WeatherCard;
