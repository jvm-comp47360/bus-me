import {Dispatch, SetStateAction, useEffect, useState} from 'react';

import {Snackbar, Alert} from '@mui/material';
import BusStop from "../types/BusStop";
import BusRoute from "../types/BusRoute";

interface Props {
  errorHasOccured: boolean,
  setErrorHasOccured: Dispatch<SetStateAction<boolean>>
  errorMessage: string
};

const ErrorMessage = ({errorHasOccured,
                        setErrorHasOccured,
                        errorMessage}: Props): JSX.Element => {

  const closeError = (event?: React.SyntheticEvent | Event, reason?: string) => {
    if (reason === 'clickaway') {
      return;
    }
    setErrorHasOccured(false);
  }

  return <>
    <Snackbar
      open={errorHasOccured}
      autoHideDuration={6000}
      onClose={closeError}
      // anchorOrigin={{vertical: 'top', horizontal: 'center'}}
    >
      <Alert onClose={closeError} severity="error" sx={{ width: '100%' }}>
        {errorMessage}
      </Alert>
    </Snackbar>
  </>
};

export default ErrorMessage;
