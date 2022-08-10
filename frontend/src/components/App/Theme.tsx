import {createTheme, Theme} from '@mui/material/styles';

// Material UI Theming: https://mui.com/material-ui/customization/theming/

const theme: Theme = createTheme({
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
    'body2': {
      color: '#ffffff',
    },
  },
});

export default theme;
