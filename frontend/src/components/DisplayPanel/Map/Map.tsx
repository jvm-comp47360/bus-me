import {useLoadScript, DirectionsRenderer, DirectionsService, GoogleMap} from '@react-google-maps/api';
import {Dispatch, SetStateAction, useMemo} from 'react';
import {Container} from '@mui/material';

import BusStop from '../../../types/BusStop';

type DirectionsResult = google.maps.DirectionsResult;
// type DirectionsStatus = google.maps.DirectionsStatus;

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
  // const directionsCallback = (
  //   response: DirectionsResult | null, 
  //   status: DirectionsStatus,
  //   ) => {
  //   if (directions !== undefined && status === 'OK') {
  //     setDirections(response)
  //   } else console.log(status)
  // };

  return !(isLoaded) ?
    <Container className="loading">Map loading...</Container>:
    <Container disableGutters={true} className="map">
      <GoogleMap
        zoom={11.7}
        center={centerCoords}
        options={mapOptions}
        mapContainerStyle={{width: '100%', height: '100vh'}}>
        {/* {(startSelection) && (finishSelection) ?
          <DirectionsService
          callback={directionsCallback}
          options={{
            origin: {
              lat: +startSelection.latitude,
              lng: +startSelection.longitude,
            },
            destination: {
              lat: +finishSelection.latitude,
              lng: +finishSelection.longitude,
            },
            travelMode: google.maps.TravelMode.TRANSIT,
            transitOptions: {
              modes: [google.maps.TransitMode.BUS]
            },
          }} />:
        null
        } */}
        {(directions) ?
        <DirectionsRenderer directions={directions}/>:
        null}
      </GoogleMap>
    </Container>;
};

export default Map;
