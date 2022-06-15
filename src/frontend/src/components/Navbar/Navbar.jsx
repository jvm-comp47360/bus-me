import AppBar from '@mui/material/AppBar';
import Button from '@mui/material/Button';
import Container from '@mui/material/Container';
import Stack from '@mui/material/Stack';
import Toolbar from '@mui/material/Toolbar';
import Typography from '@mui/material/Typography';

const Navbar = () => {
  return (<AppBar position="static">
    <Container maxWidth="xl">
      <Toolbar disableGutters>
        <Typography
          component="a"
          href="/">
          BusMe!
        </Typography>
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
