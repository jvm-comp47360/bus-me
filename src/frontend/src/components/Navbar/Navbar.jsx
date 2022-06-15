import {AppBar, Container, Toolbar, Typography} from '@mui/material';

const Navbar = () => {
  return (<AppBar position="static">
    <Container maxWidth="xl">
      <Toolbar disableGutters>
        <Typography
          component="a"
          href="/">
          BusMe!
        </Typography>
      </Toolbar>
    </Container>
  </AppBar>);
};

export default Navbar;
