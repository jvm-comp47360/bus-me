import AppBar from '@mui/material/AppBar';
import Box from '@mui/material/Box';
import Button from '@mui/material/Button';
import Container from '@mui/material/Container';
import Stack from '@mui/material/Stack';
import Toolbar from '@mui/material/Toolbar';
import Logo from '../../assets/busme_logo.png';

const Navbar = () => {
  return (
    <AppBar position="static"
      sx={{backgroundColor: '#3f50b5', borderTop: 20, borderColor: '#002984'}}>
      <Container maxWidth="xl">
        <Toolbar disableGutters
          sx={{justifyContent: 'space-between', height: '85px'}}>
          <Box component="img"
            sx={{height: 64, ml: 1}}
            alt="bus-me-logo"
            src={Logo}
          />
          <Stack direction='row'>
            <Button color='inherit'>Contact</Button>
            <Button color='inherit'>App</Button>
            <Button color='inherit'>About</Button>
            <Button color='inherit'>Login</Button>
          </Stack>
        </Toolbar>
      </Container>
    </AppBar>);
};

export default Navbar;
