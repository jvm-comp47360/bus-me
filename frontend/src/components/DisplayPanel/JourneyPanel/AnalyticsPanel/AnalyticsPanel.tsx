import {Box, Button, Typography} from '@mui/material';

const AnalyticsPanel = (): JSX.Element => {
    return (<Box sx={{
        borderTop: 1,
        display: 'flex',
        flexDirection: 'column',
        alignItems: 'center',
        borderColor: 'primary.main',
    }}>
        <Typography 
            variant='body1'
            sx={{
                mt: 1,
                textAlign: 'justify'}}>
            Plan your day better by viewing the difference 
            in travel times throughout the day!
        </Typography>
        <Button>
            Journey Times
        </Button>
    </Box>)
};

export default AnalyticsPanel;