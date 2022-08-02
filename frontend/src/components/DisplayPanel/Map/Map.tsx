import {
  useLoadScript,
  DirectionsRenderer,
  GoogleMap,
  Marker,
  InfoWindow,
} from '@react-google-maps/api';
import {Dispatch, SetStateAction, useState, useMemo, useRef, useCallback, useEffect} from 'react';
import {Container, Box} from '@mui/material';
import InfoWindowContent from './InfoWindowContent/InfoWindowContent';

import BusStop from '../../../types/BusStop';
import BusRoute from '../../../types/BusRoute';
import LoadScreen from './LoadScreen/LoadScreen';
import MapSearchBar from './MapSearchBar/MapSearchBar';
import GeoLocationButton from "./GeoLocationButton/GeoLocationButton";
import { MapRounded } from '@mui/icons-material';

type DirectionsResult = google.maps.DirectionsResult;

interface Props {
  startSelection: BusStop | undefined,
  finishSelection: BusStop | undefined,
  directions: DirectionsResult | null,
  routeSelection: BusRoute | undefined,
  userLocation: google.maps.LatLngLiteral,
  busStops: BusStop[],
  setStartSelection: Dispatch<SetStateAction<BusStop | undefined>>,
  setFinishSelection: Dispatch<SetStateAction<BusStop | undefined>>,
  setUserLocation: Dispatch<SetStateAction<google.maps.LatLngLiteral>>,
};

const googleMapsLibraries: ("places" | "drawing" | "geometry" | "localContext" | "visualization")[] = ['places'];

const Map = (
  {startSelection, 
  finishSelection, 
  directions, 
  routeSelection,
  userLocation,
  busStops,
  setStartSelection,
  setFinishSelection,
  setUserLocation}: Props): JSX.Element => {

  const {isLoaded} = useLoadScript({
    googleMapsApiKey: process.env.REACT_APP_GOOGLE_KEY as string, libraries: googleMapsLibraries
  });

  const centerCoords: google.maps.LatLngLiteral = useMemo(() => ({
    lat: 53.34760,
    lng: -6.25914,
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

  const mapRef = useRef<google.maps.Map>();
  const onLoad = useCallback((map: google.maps.Map): void => {
    mapRef.current = map
  }, [])
  

  useEffect(() => {
    mapRef.current?.panTo(userLocation)
  }, [userLocation])

  const [zoomLevel, setZoomLevel] = useState<number|undefined>(16);

  const [selectedMarker, setSelectedMarker] = useState<google.maps.LatLng | null>(null);
  return !(isLoaded) ?
    <LoadScreen/>:
    <Container
      disableGutters={true}
      className="map"
      maxWidth={false}>
      <Box sx={{
        zIndex: 1,
        display: 'flex',
        position: 'absolute',
        top: '1%',
        left: '3%',
        width: '100%',
        maxWidth: '1200px',
      }}>
        <MapSearchBar setUserLocation={setUserLocation} />
        <GeoLocationButton setUserLocation={setUserLocation} />
      </Box>
      <GoogleMap
        zoom={16}
        center={centerCoords}
        options={mapOptions}
        onLoad={onLoad}
        onZoomChanged={() => {
          if (mapRef.current?.getZoom()) setZoomLevel(mapRef.current?.getZoom());
          console.log(`Zoom level is: ${zoomLevel}`);
        }}
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
              opacity = {(zoomLevel && zoomLevel >= 11) ? 1 : 0}
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
          ): busStops.map((stop) => 
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
            opacity = {(zoomLevel && zoomLevel >= 15) ? 1 : 0}
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
        )}
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
