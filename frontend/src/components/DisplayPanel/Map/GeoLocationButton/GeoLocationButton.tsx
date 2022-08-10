// React
import {Dispatch, SetStateAction, useState} from 'react';

// Props
import Button from '@mui/material/Button';
import {Box} from '@mui/material';
import ErrorMessage from '../../../ErrorMessage/ErrorMessage';

interface Props {
  setUserLocation: Dispatch<SetStateAction<google.maps.LatLngLiteral>>;
}

const GeoLocationButton = ({setUserLocation}: Props): JSX.Element => {
  const [permissionError, setPermissionError] = useState<boolean>(false);
  const [geoLocationError, setGeoLocationError] = useState<boolean>(false);

  // Icon credit: https://icon-icons.com/icon/user-location/72177
  // Using geolocation with React:
  // https://www.pluralsight.com/guides/how-to-use-geolocation-call-in-reactjs
  const getUserLocation = () => {
    if (navigator.geolocation) {
      navigator.geolocation.getCurrentPosition((position) => {
        setUserLocation(
            {lat: position.coords.latitude, lng: position.coords.longitude});
      },
      () => setGeoLocationError(true));
    } else {
      setPermissionError(true);
    }
  };

  return <>
    <Button
      variant={'contained'}
      onClick={() => getUserLocation()}
      style={{maxWidth: '30%'}}
    >
      <Box
        component={'img'}
        src={require(`../../../../assets/geolocation.png`)}
        alt={'geolocation'}
        sx={{
          width: 35,
        }}>
      </Box>
    </Button>
    <ErrorMessage
      errorHasOccured={permissionError}
      setErrorHasOccured={setPermissionError}
      errorMessage={'Sorry, there has been an error - please try again later.'}
    />
    <ErrorMessage
      errorHasOccured={geoLocationError}
      setErrorHasOccured={setGeoLocationError}
      errorMessage=
        {'Please enable browser permissions to use geolocation service.'}
    />
  </>;
};

export default GeoLocationButton;
