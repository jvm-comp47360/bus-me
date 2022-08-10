import {StandaloneSearchBox} from '@react-google-maps/api';
import {Dispatch, SetStateAction, useState} from 'react';
import {Box} from '@mui/material';

interface Props {
  setUserLocation: Dispatch<SetStateAction<google.maps.LatLngLiteral>>,
}

// Map style source: https://tomchentw.github.io/react-google-maps/#!/SearchBox
const MapSearchBar = ({setUserLocation}: Props): JSX.Element => {
  const [placesApi, setPlacesApi] =
    useState<google.maps.places.SearchBox | null>(null);
  const onLoadPlacesApi =
    (ref: google.maps.places.SearchBox) => setPlacesApi(ref);

  const mapBoundaries: google.maps.LatLngBoundsLiteral = {
    north: 53.63322,
    south: 53.11473,
    west: -6.85965,
    east: -5.77620,
  };

  const addressIsOutOfBounds =
    (latitude: number, longitude: number): boolean => {
      console.log(mapBoundaries);
      return latitude > mapBoundaries.north ||
      latitude < mapBoundaries.south ||
      longitude < mapBoundaries.west ||
      longitude > mapBoundaries.east;
    };

  const onPlacesChanged = () => {
    if (!placesApi) {
      return;
    } else {
      const places = placesApi.getPlaces();
      if (!places || places.length === 0 ||
        !places[0].geometry || !places[0].geometry.location) {
        alert('Something has gone wrong with the Places API');
        return;
      }
      const latitude = places[0].geometry.location.lat();
      const longitude = places[0].geometry.location.lng();

      if (addressIsOutOfBounds(latitude, longitude)) {
        alert('Address is out of bounds');
        return;
      } else {
        console.log(latitude);
        console.log(longitude);
        setUserLocation({lat: latitude, lng: longitude});
      }
    }
  };

  return <Box
    sx={{width: '40%'}}
  >
    <StandaloneSearchBox
      onLoad={onLoadPlacesApi}
      bounds={mapBoundaries}
      onPlacesChanged={onPlacesChanged}
    >
      <input
        type="text"
        aria-label={'custom-address-search-bar'}
        placeholder="Show custom address on map"
        style={{
          boxSizing: `border-box`,
          border: `1px solid transparent`,
          width: `98%`,
          height: `50px`,
          padding: `0 12px`,
          borderRadius: `3px`,
          boxShadow: `0 2px 6px rgba(0, 0, 0, 0.3)`,
          fontSize: `14px`,
          outline: `none`,
          textOverflow: `ellipses`,
        }}/>
    </StandaloneSearchBox>
  </Box>;
};

export default MapSearchBar;
