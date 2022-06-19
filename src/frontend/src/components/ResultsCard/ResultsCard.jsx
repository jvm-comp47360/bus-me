import Button from '@mui/material/Button';
import Card from '@mui/material/Card';
import CardActions from '@mui/material/CardActions';
import CardContent from '@mui/material/CardContent';
import Typography from '@mui/material/Typography';
import PropTypes from 'prop-types';

const ResultsCard = (props) => {
  const {duration} = props;
  const durationPhrase = duration > 1 ?
  `${duration} Minutes` :
  `${duration} Minute`;
  return <Card sx={{
    color: 'white',
    backgroundColor: '#757DE8',
    minWidth: '300px',
    width: '50vw',
  }}>
    <CardContent sx={{
      textAlign: 'center',
      pb: 0,
    }}>
      <Typography variant="h6">
        Your journey will take approx.
      </Typography>
      <Typography variant="h3">
        {durationPhrase}
      </Typography>
    </CardContent>
    <CardActions sx={{
      justifyContent: 'center',
      py: 1,
    }}>
      <Button variant='contained'
        sx={{backgroundColor: '#ffeb3b', color: 'black'}}>Close</Button>
    </CardActions>
  </Card>;
};

export default ResultsCard;

ResultsCard.propTypes = {
  duration: PropTypes.number,
};
