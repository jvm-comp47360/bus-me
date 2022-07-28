import {Box, Button, Typography} from '@mui/material';

const AnalyticsPanel = (): JSX.Element => {
    return (<Box sx={{
        borderTop: 1,
        mx: 1,
        display: 'flex',
        flexDirection: 'column',
        alignItems: 'center'
    }}>
        <Typography 
            variant='body1'
            sx={{
                mx: 1,
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