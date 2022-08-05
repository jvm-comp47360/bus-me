import {
  AppBar,
  Box,
  Button,
  Container,
  FormControlLabel,
  Menu,
  MenuItem, Radio,
  RadioGroup,
  Stack,
  Toolbar
} from '@mui/material';
import theme from '../App/Theme';
import AboutDialog from "./AboutDialog/AboutDialog";
import React, {Dispatch, SetStateAction, useState} from "react";
import AppInfo from "../AppInfo/AppInfo";
import BusRoute from "../../types/BusRoute";
import BusStop from "../../types/BusStop";

interface Props {
  multiRoute: boolean;
  setMultiRoute: Dispatch<SetStateAction<boolean>>;
  setRouteSelection: Dispatch<SetStateAction<BusRoute | undefined>>;
  setStartSelection: Dispatch<SetStateAction<BusStop | undefined>>;
  setFinishSelection: Dispatch<SetStateAction<BusStop | undefined>>;
  setPrediction: Dispatch<SetStateAction<number | undefined>>;
}

// Dropdown Credit: https://mui.com/material-ui/react-menu/

const Navbar = ({multiRoute,
                  setMultiRoute,
                  setRouteSelection,
                  setStartSelection,
                  setFinishSelection,
                  setPrediction,
}: Props): JSX.Element => {
  const [aboutIsOpen, setAboutIsOpen] = useState<boolean>(false);
  const [appInfoIsOpen, setAppInfoIsOpen] = useState<boolean>(false);
  const [anchorElement, setAnchorElement] = useState<null | HTMLElement>(null);
  const dropdownIsOpen = Boolean(anchorElement);
  const dropdownIsClicked = (event: React.MouseEvent<HTMLButtonElement>) => {
    setAnchorElement(event.currentTarget);
  }
  const dropdownIsClosed = () => {
    setAnchorElement(null);
  }

  const toggleMultiRoute = () => {
    setMultiRoute(!multiRoute);
    setRouteSelection(undefined);
    setStartSelection(undefined);
    setFinishSelection(undefined);
    setPrediction(undefined);
  };

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
            <Button
              color={'inherit'}
              aria-controls={dropdownIsOpen ? 'basic-menu' : undefined}
              aria-haspopup={'true'}
              aria-expanded={dropdownIsOpen ? 'true' : undefined}
              onClick={dropdownIsClicked}
            >
              MultiRoute
            </Button>
            <Menu
              anchorEl={anchorElement}
              open={dropdownIsOpen}
              onClose={dropdownIsClosed}
            >
               <MenuItem onClick={dropdownIsClosed}>
                 <RadioGroup
                   name={'toggle-multiroute'}
                   value={multiRoute}
                   onChange={toggleMultiRoute}
                   defaultValue={multiRoute}
                 >
                   <Box
                     display={'flex'}
                     flexDirection={'column'}
                     flexWrap={'wrap'}
                     justifyContent={'center'}
                     margin={1}
                   >
                     <FormControlLabel control={<Radio size={'small'}/>} label={'SINGLE ROUTE'} value={false}/>
                     <FormControlLabel control={<Radio size={'small'}/>} label={'MULTI ROUTE'} value={true}/>
                   </Box>
                 </RadioGroup>
               </MenuItem>
            </Menu>
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
