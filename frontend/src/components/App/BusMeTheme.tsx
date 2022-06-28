import {createTheme} from '@mui/material/styles';

const theme = createTheme({
  palette: {
    primary: {
      main: '#3f51b5',
    },
    secondary: {
      main: '#002984',
    },
    background: {
      paper: '#3f51b5',
    },
  },
  typography: {
    'fontFamily': 'Lato',
  },
});

export default theme;
