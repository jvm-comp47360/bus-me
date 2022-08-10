import React from "react";
import {Box, Button, Dialog, DialogContent, DialogContentText, DialogTitle, Divider} from '@mui/material';
import {Dispatch, SetStateAction} from "react";
import {BrowserRouter, Link} from "react-router-dom";

interface Props {
  aboutIsOpen: boolean,
  setAboutIsOpen: Dispatch<SetStateAction<boolean>>;
}

const AboutDialog = ({
                       aboutIsOpen,
                       setAboutIsOpen,
                     }: Props): JSX.Element => {

  const closeAbout = () => {
    setAboutIsOpen(false);
  }

  return <BrowserRouter>
    <Dialog
      fullWidth
      maxWidth={'sm'}
      open={aboutIsOpen}
    >
      <DialogTitle sx={{color: 'white'}}>
        About
      </DialogTitle>
      <DialogContent sx={{backgroundColor: 'white'}}>
        <Box
          display={'flex'}
          flexDirection={'column'}
          alignItems={'center'}
        >
          <Box
            display={'flex'}
            flexDirection={'column'}
            m={3}
          >
            <DialogContentText textAlign={'center'}>
              BusMe is a web application that predicts bus journey times in Dublin City. It was created by Jack
              Mulligan, Miao Shi and Vlad Rakhmanin as part of the UCD MSc Computer Science (Conversion) course.
            </DialogContentText>
            <Divider variant={'middle'} sx={{margin: 1}}/>
            <DialogContentText textAlign={'center'}>
              For more information, please visit the GitHub repository for this project by clicking the button below.
            </DialogContentText>
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
            <Button
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

export default AboutDialog;