import {Card, CardContent, Typography} from '@mui/material';
import {styled} from "@mui/material/styles";
import ArrowDropDownIcon from '@mui/icons-material/ArrowDropDown';
import DirectionsBusIcon from '@mui/icons-material/DirectionsBus';
import {Dispatch, SetStateAction} from 'react';

// TODO: Merge this declaration and one in WeatherCard to a common source
const CardContentNoPadding = styled(CardContent)(`
  padding: 0;
  &:last-child {
    padding-bottom: 0;
  }
`);

interface Props {
    setCollapseJourneyPanel: Dispatch<SetStateAction<Boolean>>,
    collapseJourneyPanel: Boolean,
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
      }}>
      <DirectionsBusIcon />
      <CardContentNoPadding>
        <Typography variant='body2'>
          Your Journey
        </Typography>
      </CardContentNoPadding>
      <ArrowDropDownIcon 
        sx={{color: 'white'}}
        onClick={() => setCollapseJourneyPanel(false)}/>
      </Card>
};

export default JourneyPanelCollapsed;