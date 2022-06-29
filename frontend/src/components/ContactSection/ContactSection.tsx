import {Button, Container, Grid, TextField, Typography} from '@mui/material';
import SectionHeader from '../SectionHeader/SectionHeader';

const ContactSection = (): JSX.Element => {
  return (
    <Container id="contact">
      <SectionHeader title="Contact Us" />
      <Grid container>
        <Grid item>
          <Typography
            variant="h5"
            paragraph>
            Get in touch with BusMe using the form below. We welcome your
            ideas on improving our application or those interested in
            collaborating directly with us.
          </Typography>
        </Grid>
        <Grid
          item
          container
          component="form"
        >
          <Grid item>
            <TextField
              label="Message"
              id="message"
              multiline
              rows={4}
            />
          </Grid>
          <Grid item>
            <TextField label="Email" id="email"/>
            <TextField label="Name" id="name"/>
            <Button variant="contained">Send</Button>
          </Grid>
        </Grid>
      </Grid>
    </Container>
  );
};

export default ContactSection;
