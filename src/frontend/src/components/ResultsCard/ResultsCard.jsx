import Button from '@mui/material/Button';
import Card from '@mui/material/Card';
import CardActions from '@mui/material/CardActions';
import CardContent from '@mui/material/CardContent';
import Typography from '@mui/material/Typography';
import PropTypes from 'prop-types';

const ResultsCard = (props) => {
  const {duration} = props;
  const durationPhrase = duration > 1 ?
  `${duration} minutes.` :
  `${duration} minute.`;
  return <Card>
    <CardContent>
      <Typography>
        Your journey will take approx.
      </Typography>
      <Typography>
        {durationPhrase}
      </Typography>
    </CardContent>
    <CardActions>
      <Button>Close</Button>
    </CardActions>
  </Card>;
};

export default ResultsCard;

ResultsCard.propTypes = {
  duration: PropTypes.number,
};
