import {AppBar, Box, Button, Container, Stack, Toolbar} from '@mui/material';
import Logo from '../../assets/busme_logo.png';

const Navbar = () => {
  const sitePages = ['Contact', 'App', 'About', 'Login'];
  return (
    <AppBar position="static"
      sx={{backgroundColor: '#3f50b5',
        borderTop: 20,
        borderColor: '#002984'}}>
      <Container maxWidth="xl">
        <Toolbar disableGutters
          sx={{justifyContent: 'space-between', height: '85px'}}>
          <Box component="img"
            sx={{height: 64, ml: 1}}
            alt="bus-me-logo"
            src={Logo}
          />
          <Stack direction='row'
            sx={{marginTop: 1}}>
            {sitePages.map((page) =>
              <Button key={page} color='inherit'>{page}</Button>
            )}
          </Stack>
        </Toolbar>
      </Container>
    </AppBar>);
};

export default Navbar;
