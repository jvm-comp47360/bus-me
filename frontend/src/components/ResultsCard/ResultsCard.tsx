import Button from '@mui/material/Button';
import Card from '@mui/material/Card';
import CardActions from '@mui/material/CardActions';
import CardContent from '@mui/material/CardContent';
import Typography from '@mui/material/Typography';

interface Props {
  duration: number;
}

const ResultsCard = ({duration}: Props): JSX.Element => {
  const durationPhrase: string = duration > 1 ?
  `${duration} Minutes` :
  `${duration} Minute`;

  return <Card sx={{
    color: 'white',
    minWidth: '300px',
    width: '33vw',
  }}>
    <CardContent sx={{textAlign: 'center', pb: 0}}>
      <Typography variant="h6">
        Your journey will take approx.
      </Typography>
      <Typography variant="h3">
        {durationPhrase}
      </Typography>
    </CardContent>
    <CardActions sx={{justifyContent: 'center', py: 1}}>
      <Button variant='contained'
        sx={{backgroundColor: '#ffeb3b', color: 'black'}}>Close</Button>
    </CardActions>
  </Card>;
};

export default ResultsCard;
