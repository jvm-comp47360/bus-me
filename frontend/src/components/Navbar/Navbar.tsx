import {AppBar, Box, Button, Container, Stack, Toolbar} from '@mui/material';
import theme from '../App/Theme';
import AboutDialog from "./AboutDialog/AboutDialog";
import {Dispatch, SetStateAction, useRef, useState} from "react";
import AppInfo from "../AppInfo/AppInfo";

interface Props {
  appInfoIsOn: boolean,
  setAppInfoIsOn: Dispatch<SetStateAction<boolean>>;
  appInfoPosition: HTMLDivElement | undefined
}

const Navbar = ({appInfoIsOn, setAppInfoIsOn, appInfoPosition}: Props): JSX.Element => {
  const [aboutIsOpen, setAboutIsOpen] = useState<boolean>(false);
  const [appInfoIsOpen, setAppInfoIsOpen] = useState<boolean>(false);

  return (
    <AppBar position="fixed"
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
              color='inherit'
              onClick={() => {setAppInfoIsOpen(true)}}
            >
              App
            </Button>
            <Button
              color='inherit'
              onClick={() => {setAboutIsOpen(true)}}
            >
              About
            </Button>
          </Stack>
        </Toolbar>
        <AboutDialog
          aboutIsOpen={aboutIsOpen}
          setAboutIsOpen={setAboutIsOpen}
        />
        <AppInfo
          appInfoIsOpen={appInfoIsOpen}
          setAppInfoIsOpen={setAppInfoIsOpen}
        />
      </Container>
    </AppBar>);
};

export default Navbar;
