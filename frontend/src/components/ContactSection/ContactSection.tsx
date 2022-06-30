import {Button, Grid, TextField, Typography} from '@mui/material';
import SectionHeader from '../SectionHeader/SectionHeader';

const ContactSection = (): JSX.Element => {
  return (
    <Grid
      container
      id="contact"
      sx={{
        borderTop: 1,
        justifyContent: 'center',
        width: '100%',
      }}>
      <Grid item>
        <SectionHeader title="Contact Us" />
      </Grid>
      <Grid
        item
        container
        sx={{
          justifyContent: 'center',
        }}
      >
        <Grid item sx={{width: '75%'}}>
          <Typography
            variant="h5"
            paragraph
            sx={{'textAlign': 'center'}}>
            Get in touch with BusMe using the form below. We welcome new
            collaboraters as well as suggestions and feedback.
          </Typography>
        </Grid>
        <Grid
          item
          container
          component="form"
          sx={{'justifyContent': 'center'}}
        >
          <Grid
            item
            sx={{width: '75%'}}
          >
            <TextField
              label="Message"
              id="message"
              multiline
              rows={4}
              sx={{'width': '100%'}}
            />
          </Grid>
          <Grid
            item
            container
            sx={{
              justifyContent: 'space-between',
              width: '75%',
            }}
          >
            <TextField label="Email" id="email"/>
            <TextField label="Name" id="name"/>
            <Button variant="contained">Send</Button>
          </Grid>
        </Grid>
      </Grid>
    </Grid>
  );
};

export default ContactSection;
