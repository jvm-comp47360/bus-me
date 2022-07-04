import {useLoadScript, GoogleMap, Marker} from '@react-google-maps/api';
import {Container} from '@mui/material';

import BusStop from '../../types/BusStop';

interface Props {
  startSelection: BusStop | undefined,
  finishSelection: BusStop | undefined,
}

const Map = ({startSelection, finishSelection}: Props): JSX.Element => {
  const {isLoaded} = useLoadScript({
    googleMapsApiKey: process.env.REACT_APP_GOOGLE_KEY as string,
  });
  const centerCoords: google.maps.LatLngLiteral = {
    lat: 53.33947559137039,
    lng: -6.248868208190408,
  };
  const mapOptions: google.maps.MapOptions = {
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
    <Container disableGutters={true} className="map">
      <GoogleMap
        zoom={11.7}
        center={centerCoords}
        options={mapOptions}
        mapContainerStyle={{width: '100%', height: '100vh'}}>
        {(startSelection) && (finishSelection) ?
            [startSelection, finishSelection].map((selection) =>
              <Marker
                key={selection?.number}
                position={{
                  lat: +selection.latitude,
                  lng: +selection.longitude,
                }}/>
            ):
        null}
      </GoogleMap>
    </Container>;
};

export default Map;
