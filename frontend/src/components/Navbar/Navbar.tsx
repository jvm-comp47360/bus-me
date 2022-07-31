import {AppBar, Box, Button, Container, FormControlLabel, Stack, Switch, Toolbar} from '@mui/material';
import theme from '../App/Theme';
import BusStop from "../../types/BusStop";
import BusRoute from "../../types/BusRoute";
import {Dispatch, SetStateAction} from "react";

interface Props {
  multiRoute: boolean,
  setMultiRoute: Dispatch<SetStateAction<boolean>>,
  setStartSelection: Dispatch<SetStateAction<BusStop | undefined>>;
  setFinishSelection: Dispatch<SetStateAction<BusStop | undefined>>;
  setRouteSelection: Dispatch<SetStateAction<BusRoute | undefined>>;
  setPrediction: Dispatch<SetStateAction<number | undefined>>;
  setDirections: Dispatch<SetStateAction<google.maps.DirectionsResult | null>>;
  setRouteDisplayIsOn: Dispatch<SetStateAction<boolean>>;
}

const Navbar = ({multiRoute,
                  setMultiRoute,
                setStartSelection,
                setFinishSelection,
                setPrediction,
                setRouteSelection,
                setDirections,
                setRouteDisplayIsOn}: Props): JSX.Element => {
  const sitePages: string[] = ['Contact', 'App', 'About'];

  const toggleMultiRoute = () => {
    setMultiRoute(!multiRoute);
    setStartSelection(undefined)
    setFinishSelection(undefined)
    setPrediction(undefined)
    setRouteSelection(undefined)
    setDirections(null)
    setRouteDisplayIsOn(false)
  }

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
            {sitePages.map((page) =>
              <Button
                key={page}
                color='inherit'
                component='a'
                href={`#${page.toLowerCase()}`}>
                {page}
              </Button>,
            )}
            <FormControlLabel
              control={
                <Switch
                  color={"secondary"}
                  checked={multiRoute}
                  onChange={toggleMultiRoute}
                  inputProps={{'aria-label': 'MultiRoute'}}
                />
              }
              label={'MULTIROUTE'}
              labelPlacement={'top'}
            />
          </Stack>
        </Toolbar>
      </Container>
    </AppBar>);
};

export default Navbar;
