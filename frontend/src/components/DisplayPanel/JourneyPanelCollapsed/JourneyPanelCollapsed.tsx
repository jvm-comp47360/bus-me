import {Card, CardContent, Grid, Typography} from '@mui/material';
import {styled} from '@mui/material/styles';
import ArrowDropDownIcon from '@mui/icons-material/ArrowDropDown';
import {Dispatch, SetStateAction} from 'react';

// TODO: Merge this declaration and one in WeatherCard to a common source
const CardContentNoPadding = styled(CardContent)(`
  padding: 0;
  &:last-child {
    padding-bottom: 0;
  }
`);

interface Props {
    setCollapseJourneyPanel: Dispatch<SetStateAction<boolean>>,
    collapseJourneyPanel: boolean,
}

const JourneyPanelCollapsed = ({setCollapseJourneyPanel, collapseJourneyPanel}: Props): JSX.Element => {
  const displayValue = collapseJourneyPanel ? 'flex' : 'none';

  return <Card sx={{
    backgroundColor: 'primary.main',
    display: displayValue,
    alignItems: 'center',
    justifyContent: 'center',
    borderRadius: 0,
    borderTop: 1,
    borderColor: '#757DE8',
    padding: 0.5,
  }}>
    <Grid container>
      <Grid item xs={11} sx={{alignSelf: 'center'}}>
        <CardContentNoPadding >
          <Typography variant='body2' sx={{textAlign: 'center'}}>
                Your Journey
          </Typography>
        </CardContentNoPadding>
      </Grid>
      <Grid item xs={1}>
        <ArrowDropDownIcon
          sx={{color: 'white'}}
          onClick={() => setCollapseJourneyPanel(false)}/>
      </Grid>
    </Grid>
  </Card>;
};

export default JourneyPanelCollapsed;
