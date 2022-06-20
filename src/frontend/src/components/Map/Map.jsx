import {useLoadScript, GoogleMap} from '@react-google-maps/api';
import {Container} from '@mui/material';

const Map = () => {
  const {isLoaded} = useLoadScript({
    googleMapsApiKey: process.env.REACT_APP_GOOGLE_KEY,
  });
  const centerCoords = {lat: 53.33947559137039, lng: -6.248868208190408};
  const mapOptions = {
    streetViewControl: false,
    mapTypeControl: false,
    clickableIcons: false,
    fullscreenControl: false,
    minZoom: 10,
    restriction: {
      latLngBounds: {
        north: 53.63322,
        south: 53.11473,
        west: -6.85965,
        east: -5.77620,
      },
    },
  };

  return !(isLoaded) ?
    <Container className="loading">Map loading...</Container>:
    <Container disableGutters="true" className="map">
      <GoogleMap
        zoom={11.7}
        center={centerCoords}
        options={mapOptions}
        mapContainerStyle={{width: '100%', height: '100vh'}}>
      </GoogleMap>
    </Container>;
};

export default Map;
