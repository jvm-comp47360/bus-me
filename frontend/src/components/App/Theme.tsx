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
      paper: '#757de8',
    },
  },
  typography: {
    'fontFamily': 'Lato',
    'h4': {
      color: '#ffffff',
    },
    'h6': {
      color: '#ffffff',
    },
    'body2': {
      color: '#ffffff',
    },
  },
});

export default theme;
