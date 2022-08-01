// React
import React, {Dispatch, SetStateAction} from 'react';

// Props
import Button from '@mui/material/Button';

interface Props {
  setUserLocation: Dispatch<SetStateAction<GeolocationPosition | undefined>>;
}

const GeoLocationButton = ({setUserLocation}: Props): JSX.Element => {

  // Icon credit: https://icon-icons.com/icon/user-location/72177
  const getUserLocation = () => {
    if (navigator.geolocation) {
      navigator.geolocation.getCurrentPosition(position => setUserLocation(position),
        () => alert('Sorry, there has been an error - please try again later.'))
    }
    else {
      alert('Please enable browser permissions to use geolocation service.')
    }
  }

  return <>
    <Button
      variant={'contained'}
      onClick={() => getUserLocation()}
      style={{maxWidth: '30%'}}
      sx={{margin: 1}}
    >
      Get Location
    </Button>
  </>;
};

export default GeoLocationButton;
