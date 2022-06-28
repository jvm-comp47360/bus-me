import {Box, Container, Grid, Typography} from '@mui/material';
import SectionHeader from '../SectionHeader/SectionHeader';

const AboutSection = (): JSX.Element => {
  return (
    <Container id="about" sx={{borderTop: 1}}>
      <SectionHeader title="About BusMe" />
      <Grid
        container
        rowSpacing={{xs: 3, sm: 0}}
        columnSpacing={{sm: 3, md: 0}}
        alignItems="center">
        <Grid
          item
          container
          xs={12}
          sm={6}
          justifyContent="center">
          <Box component="img"
            sx={{height: 200}}
            alt="bus-me-logo"
            src={require('../../assets/busme_logo.png')}
          />
        </Grid>
        <Grid
          item
          container
          xs={12}
          sm={6}>
          <Typography
            variant="h5"
            paragraph
            sx={{'textAlign': 'justify'}}>
          The BusMe journey planner gives you an accurate prediction of how
          long your journey with Dublin Bus will really take.
          </Typography>
        </Grid>
      </Grid>
    </Container>
  );
};

export default AboutSection;
