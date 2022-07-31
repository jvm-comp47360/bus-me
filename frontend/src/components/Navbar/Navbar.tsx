import {AppBar, Box, Button, Container, Stack, Toolbar} from '@mui/material';
import theme from '../App/Theme';
import AboutDialog from "./AboutDialog/AboutDialog";
import {useState} from "react";

const Navbar = (): JSX.Element => {
  const [aboutIsOpen, setAboutIsOpen] = useState<boolean>(false)
  return (
    <AppBar position="static"
      sx={{borderTop: 20,
        borderColor: theme.palette.secondary.main}}>
      <Container maxWidth="xl">
        <Toolbar disableGutters
          sx={{justifyContent: 'space-between', height: '85px'}}>
          <Box component="img"
            sx={{height: 64, ml: 1}}
            alt="bus-me-logo-nav"
            src={require('../../assets/busme_logo.png')}
          />
          <Stack direction='row'
            sx={{marginTop: 1}}>

            <Button
              key={'Contact'}
              color='inherit'
              component='a'
              href={`#${'Contact'.toLowerCase()}`}>
              {'Contact'}
            </Button>
            <Button
              key={'App'}
              color='inherit'
              component='a'
              href={`#${'App'.toLowerCase()}`}>
              {'App'}
            </Button>
            <Button
              color='inherit'
              onClick={() => setAboutIsOpen(true)}
            >
              About
            </Button>
          </Stack>
        </Toolbar>
        <AboutDialog
          aboutIsOpen={aboutIsOpen}
          setAboutIsOpen={setAboutIsOpen}
        />
      </Container>
    </AppBar>);
};

export default Navbar;
