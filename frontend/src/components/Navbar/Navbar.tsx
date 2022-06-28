import {AppBar, Box, Button, Container, Stack, Toolbar} from '@mui/material';

const Navbar = (): JSX.Element => {
  const sitePages: string[] = ['Contact', 'App', 'About', 'Login'];
  return (
    <AppBar position="static"
      sx={{borderTop: 20,
        borderColor: '#002984'}}>
      <Container maxWidth="xl">
        <Toolbar disableGutters
          sx={{justifyContent: 'space-between', height: '85px'}}>
          <Box component="img"
            sx={{height: 64, ml: 1}}
            alt="bus-me-logo"
            src={require('../../assets/busme_logo.png')}
          />
          <Stack direction='row'
            sx={{marginTop: 1}}>
            {sitePages.map((page) =>
              <Button key={page} color='inherit'>{page}</Button>,
            )}
          </Stack>
        </Toolbar>
      </Container>
    </AppBar>);
};

export default Navbar;
