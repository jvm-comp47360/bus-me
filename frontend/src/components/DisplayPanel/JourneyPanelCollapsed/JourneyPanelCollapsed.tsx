import {Card, CardContent, Typography} from '@mui/material';
import {styled} from "@mui/material/styles";
import AddCircleOutlineIcon from '@mui/icons-material/AddCircleOutline';

// TODO: Merge this declaration and one in WeatherCard to a common source
const CardContentNoPadding = styled(CardContent)(`
  padding: 0;
  &:last-child {
    padding-bottom: 0;
  }
`);

const JourneyPanelCollapsed = (): JSX.Element => {
    return <Card sx={{
        backgroundColor: 'primary.main',
        display: 'flex',
        alignItems: 'center',
        justifyContent: 'center',
        borderRadius: 0,
        borderTop: 1,
        borderColor: '#FFEB3B',
      }}>
      <CardContentNoPadding>
        <Typography variant='body2'>
          Your Journey
        </Typography>
      </CardContentNoPadding>
      <AddCircleOutlineIcon sx={{color: 'white'}}/>
      </Card>
};

export default JourneyPanelCollapsed;