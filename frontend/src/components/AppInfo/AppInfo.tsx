import React from "react";
import {Box, Button, Dialog, DialogContent, DialogContentText, DialogTitle, Divider} from '@mui/material';
import {BrowserRouter, Link} from "react-router-dom"
import {Dispatch, SetStateAction} from "react";

interface Props {
  appInfoIsOpen: boolean,
  setAppInfoIsOpen: Dispatch<SetStateAction<boolean>>;
}

const AppInfo = ({
                       appInfoIsOpen,
                       setAppInfoIsOpen,
                     }: Props): JSX.Element => {

  const closeAbout = () => {
    setAppInfoIsOpen(false);
  }

  return <BrowserRouter>
    <Dialog
      fullWidth
      maxWidth={'sm'}
      open={appInfoIsOpen}
    >
      <DialogTitle sx={{color: 'white'}}>
        App Info
      </DialogTitle>
      <DialogContent sx={{backgroundColor: 'white'}}>
          <Box
            display={'flex'}
            flexDirection={'row'}
          >
            <Box component="img"
                 sx={{height: 400}}
                 alt="bus-me-logo"
                 src={require('../../assets/BusMeMobile.JPG')}
                 m={3}
            />
            <Box
              display={'flex'}
              flexDirection={'column'}
              m={3}
            >
              <DialogContentText textAlign={'center'}>
                The mobile version of BusMe is currently in beta, and is available for both iOS and Android platforms.
                We are currently welcoming testers for both platforms - please click the buttons below to either get in
                touch with the development team, or to access the code repository.
              </DialogContentText>
              <Divider variant={'middle'} sx={{margin: 2}}/>
              <Box
                display={'flex'}
                flexDirection={'row'}
                alignSelf={'center'}
              >
                <Button
                  component={Link}
                  to={'#'}
                  onClick={() => {
                    window.location.href =
                      'mailto:vladimir.rakhmanin@ucdconnect.ie?subject=BusMe Mobile';
                  }
                }
                >
                  Contact
                </Button>
                <Button
                  component={Link}
                  to={'#'}
                  onClick={() => {
                      window.location.href = 'https://github.com/toadkarter';
                    }
                  }
                >
                  GitHub
                </Button>
              </Box>
              <Button
                sx={{marginTop: 2}}
                onClick={closeAbout}
                variant={'outlined'}
              >
                Back to Map
              </Button>
            </Box>
          </Box>
      </DialogContent>
    </Dialog>
  </BrowserRouter>;
};

export default AppInfo;