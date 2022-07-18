import {useLoadScript, DirectionsRenderer, GoogleMap} from '@react-google-maps/api';
import {useMemo} from 'react';
import {Container} from '@mui/material';

import BusStop from '../../../types/BusStop';

type DirectionsResult = google.maps.DirectionsResult;

interface Props {
  startSelection: BusStop | undefined,
  finishSelection: BusStop | undefined,
  directions: DirectionsResult | null,
};

const Map = ({startSelection, finishSelection, directions}: Props): JSX.Element => {
  const {isLoaded} = useLoadScript({
    googleMapsApiKey: process.env.REACT_APP_GOOGLE_KEY as string,
  });
  const centerCoords: google.maps.LatLngLiteral = useMemo(() => ({
    lat: 53.33947559137039,
    lng: -6.248868208190408,
  }), []);
  const mapOptions: google.maps.MapOptions = useMemo(() => ({
    mapId: "5a13c1894ab64113",
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
  }), []);

  return !(isLoaded) ?
    <Container className="loading">Map loading...</Container>:
    <Container disableGutters={true} className="map">
      <GoogleMap
        zoom={11.7}
        center={centerCoords}
        options={mapOptions}
        mapContainerStyle={{width: '100%', height: '100vh'}}>
        {(directions) ?
        <DirectionsRenderer 
          directions={directions}
          options={{
            polylineOptions: {
              strokeColor: "#002984",
              strokeWeight: 5,
              strokeOpacity: 0.75,
            }
          }}/>:
        null}
      </GoogleMap>
    </Container>;
};

export default Map;
