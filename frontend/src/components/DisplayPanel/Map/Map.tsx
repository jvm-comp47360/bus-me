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
import { start } from 'repl';

type DirectionsResult = google.maps.DirectionsResult;

interface Props {
  startSelection: BusStop | undefined;
  finishSelection: BusStop | undefined;
  directions: DirectionsResult | null;
  routeSelection: BusRoute | undefined;
  userLocation: google.maps.LatLngLiteral;
  busStops: BusStop[];
  busRoutes: BusRoute[];
  setStartSelection: Dispatch<SetStateAction<BusStop | undefined>>;
  setFinishSelection: Dispatch<SetStateAction<BusStop | undefined>>;
  setUserLocation: Dispatch<SetStateAction<google.maps.LatLngLiteral>>;
  setRouteSelection: Dispatch<SetStateAction<BusRoute | undefined>>;
  setDirections: Dispatch<SetStateAction<DirectionsResult | null>>;
  multiRoute: boolean;
};

const googleMapsLibraries: ("places" | "drawing" | "geometry" | "localContext" | "visualization")[] = ['places'];

const Map = ({
  startSelection, 
  finishSelection, 
  directions, 
  routeSelection,
  userLocation,
  busStops,
  busRoutes,
  setStartSelection,
  setFinishSelection,
  setUserLocation,
  setRouteSelection,
  setDirections,
  multiRoute,
}: Props): JSX.Element => {

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

  const getOpacityValue = (stopID: string, routeSelection: BusRoute): number => {
    const FULL_VALUE = 1;
    const OPAQUE_VALUE = 0.4;

    if (startSelection && !finishSelection) {
      const stopIDArray: string[] = routeSelection.bus_stops.map(route => route.id);
      return (stopIDArray.indexOf(stopID) < stopIDArray.indexOf(startSelection.id) ? OPAQUE_VALUE : FULL_VALUE);
    }
    else if (startSelection && finishSelection) {
      if (stopID === startSelection.id || stopID === finishSelection.id) return FULL_VALUE;
      else return OPAQUE_VALUE;
    }
    return FULL_VALUE;
  }
  
  useEffect(() => {
    mapRef.current?.panTo(userLocation)
  }, [userLocation])

  useEffect(() => {
    const getBoundsFromRoute = (routeSelection: BusRoute): google.maps.LatLngBounds => {
      const routeLongitudes: number[] = routeSelection.bus_stops.map(stop => +stop.longitude);
      const routeLatitudes: number[] = routeSelection.bus_stops.map(stop => +stop.latitude);
      const maxLongitude: number = routeLongitudes.reduce((a,b) => Math.max(a,b), -Infinity);
      const minLongitude: number = routeLongitudes.reduce((a,b) => Math.min(a,b), Infinity);
      const maxLatitude: number = routeLatitudes.reduce((a,b) => Math.max(a,b), -Infinity);
      const minLatitude: number = routeLatitudes.reduce((a,b) => Math.min(a,b), Infinity);

      return new google.maps.LatLngBounds(
        {lat: minLatitude, lng: minLongitude}, 
        {lat: maxLatitude, lng: maxLongitude},
      );
    }

    const getZoomForBounds = (map: React.MutableRefObject<google.maps.Map | undefined>, bounds: google.maps.LatLngBounds): number => {
      // Source: https://stackoverflow.com/questions/9837017/equivalent-of-getboundszoomlevel-in-gmaps-api-3
      const MAX_ZOOM = 21;
      const MIN_ZOOM = 10;
      const FIT_PAD = 40;

      if (map.current) {
        const northEastXY = map.current.getProjection()?.fromLatLngToPoint(bounds.getNorthEast());
        const southWestXY = map.current.getProjection()?.fromLatLngToPoint(bounds.getSouthWest());

        const desiredMapWidth = (northEastXY && southWestXY) ? Math.abs(northEastXY.x - southWestXY.x) : 0;
        const desiredMapHeight = (northEastXY && southWestXY) ? Math.abs(northEastXY.y - southWestXY.y): 0;

        for (let zoom = MAX_ZOOM; zoom >= MIN_ZOOM; --zoom) {
          if (desiredMapWidth*(1<<zoom)+2*FIT_PAD < (map.current.getDiv().clientWidth) && 
              desiredMapHeight*(1<<zoom)+2*FIT_PAD < (map.current.getDiv()).clientHeight) return zoom  
        }
        return MIN_ZOOM;
      }
      return MIN_ZOOM;
    }

    if (routeSelection) {
      const bounds: google.maps.LatLngBounds = getBoundsFromRoute(routeSelection)
      const requiredZoom: number = getZoomForBounds(mapRef, bounds);
      setZoomLevel(requiredZoom);
      if (mapRef.current) {
        const boundCenter = bounds.getCenter();
        mapRef.current?.panTo({
          lat: boundCenter.lat(),
          lng: boundCenter.lng(),
        })
      }
    }
    else setZoomLevel(15);
  }, [routeSelection])

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
        zoom={zoomLevel} //16
        center={centerCoords}
        options={mapOptions}
        onLoad={onLoad}
        onZoomChanged={() => {
          if (mapRef.current?.getZoom()) setZoomLevel(mapRef.current?.getZoom());
          console.log(mapRef.current?.getZoom());
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
              opacity = {getOpacityValue(stop.id, routeSelection)}
              visible = {(zoomLevel && zoomLevel >= 11) ? true : false}
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
                      finishSelection={finishSelection}
                      busRoutes={busRoutes}
                      busStops={busStops}
                      setRouteSelection={setRouteSelection}
                      multiRoute={multiRoute}
                      routeSelection={routeSelection}
                      setDirections={setDirections}
                      setSelectedMarker={setSelectedMarker}
                    />
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
            visible = {(zoomLevel && zoomLevel >= 15) ? true : false}
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
                    finishSelection={finishSelection}
                    busRoutes={busRoutes}
                    setRouteSelection={setRouteSelection}
                    multiRoute={multiRoute}
                    routeSelection={routeSelection}
                    setDirections={setDirections}
                    setSelectedMarker={setSelectedMarker}
                  />
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
