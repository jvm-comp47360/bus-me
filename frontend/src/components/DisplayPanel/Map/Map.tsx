import {
  useLoadScript,
  DirectionsRenderer,
  GoogleMap,
  Marker,
  OverlayView,
  InfoWindow,
  Autocomplete, StandaloneSearchBox
} from '@react-google-maps/api';
import {Dispatch, SetStateAction, useState, useMemo} from 'react';
import {Container} from '@mui/material';
import InfoWindowContent from './InfoWindowContent/InfoWindowContent';

import BusStop from '../../../types/BusStop';
import BusRoute from '../../../types/BusRoute';
import LoadScreen from "./LoadScreen/LoadScreen";

type DirectionsResult = google.maps.DirectionsResult;

interface Props {
  startSelection: BusStop | undefined,
  finishSelection: BusStop | undefined,
  directions: DirectionsResult | null,
  routeSelection: BusRoute | undefined,
  setStartSelection: Dispatch<SetStateAction<BusStop | undefined>>,
  setFinishSelection: Dispatch<SetStateAction<BusStop | undefined>>
};

const Map = (
  {startSelection, 
  finishSelection, 
  directions, 
  routeSelection,
  setStartSelection,
  setFinishSelection}: Props): JSX.Element => {
  const {isLoaded} = useLoadScript({
    googleMapsApiKey: process.env.REACT_APP_GOOGLE_KEY as string, libraries: ['places']
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

  const [selectedMarker, setSelectedMarker] = useState<google.maps.LatLng | null>(null);
  return !(isLoaded) ?
    <LoadScreen/>:
    <Container
      disableGutters={true}
      className="map"
      maxWidth={false}>
      <StandaloneSearchBox>
        <input
          type="text"
          placeholder="Show custom address on map"
          style={{
            boxSizing: `border-box`,
            border: `1px solid transparent`,
            width: `240px`,
            height: `32px`,
            marginTop: `27px`,
            padding: `0 12px`,
            borderRadius: `3px`,
            boxShadow: `0 2px 6px rgba(0, 0, 0, 0.3)`,
            fontSize: `14px`,
            outline: `none`,
            textOverflow: `ellipses`,
          }}/>
      </StandaloneSearchBox>
      <GoogleMap
        zoom={11.7}
        center={centerCoords}
        options={mapOptions}
        mapContainerStyle={{width: '100%', height: '100vh'}}>
        <>
        {(routeSelection) ?
        routeSelection.bus_stops.map((stop) => 
          <Marker
            key={stop.number}
            position={{
              lat: +stop.latitude,
              lng: +stop.longitude,
            }}
            icon = {{
              url: require(`../../../assets/bus_me_stop.png`),
              scaledSize: new google.maps.Size(17.5, 17.5)
            }}
            onClick = {(e) => setSelectedMarker(e.latLng)}
          >
            {(selectedMarker && selectedMarker.lat() === +stop.latitude &&
              selectedMarker.lng() === +stop.longitude) ?
                <InfoWindow
                position={{
                  lat: +stop.latitude,
                  lng: +stop.longitude,
                }}
                onCloseClick = {() => setSelectedMarker(null)}
                >
                  <InfoWindowContent 
                    stop={stop}
                    setStartSelection={setStartSelection}
                    startSelection={startSelection}
                    setFinishSelection={setFinishSelection}
                    finishSelection={finishSelection} />
                </InfoWindow>:
              null}
          </Marker>
        ): null}
        {(directions) ?
        <DirectionsRenderer 
          directions={directions}
          options={{
            polylineOptions: {
              strokeColor: "#002984",
              strokeWeight: 5,
              strokeOpacity: 0.75,
            },
            suppressMarkers: true,
          }}/>:
          null}
        </>
      </GoogleMap>
    </Container>;
};

export default Map;
