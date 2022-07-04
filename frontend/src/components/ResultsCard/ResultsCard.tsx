import Button from '@mui/material/Button';
import Card from '@mui/material/Card';
import CardActions from '@mui/material/CardActions';
import CardContent from '@mui/material/CardContent';
import Typography from '@mui/material/Typography';
import {Box} from "@mui/material";

interface Props {
  duration: number;
}

const ResultsCard = ({duration}: Props): JSX.Element => {
  const durationPhrase: string = duration > 1 ?
  `${duration} Minutes` :
  `${duration} Minute`;

  return <Box sx={{
    position: 'absolute',
    zIndex: 1,
    top: '25%',
    left: '27%',
  }}>
    <Card sx={{
      color: 'white',
      minWidth: '300px',
      width: '33vw',
    }}>
      <CardContent sx={{textAlign: 'center', pb: 0}}>
        <Typography variant="h6">
          Your journey will take approx.
        </Typography>
        <Typography variant="h4">
          {durationPhrase}
        </Typography>
      </CardContent>
      <CardActions sx={{justifyContent: 'center', py: 1}}>
        <Button variant='contained'>Close</Button>
      </CardActions>
    </Card>
  </Box>;
};

export default ResultsCard;
