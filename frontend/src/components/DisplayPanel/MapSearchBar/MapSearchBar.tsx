import {StandaloneSearchBox} from "@react-google-maps/api";
import {Dispatch, SetStateAction, useState} from "react";
import {Box} from "@mui/material";

interface Props {
  customAddress: google.maps.LatLng | undefined;
  setCustomAddress: Dispatch<SetStateAction<google.maps.LatLng | undefined>>,
}

// Map style source: https://tomchentw.github.io/react-google-maps/#!/SearchBox
const MapSearchBar = ({customAddress, setCustomAddress}: Props): JSX.Element => {
  const [placesApi, setPlacesApi] = useState<google.maps.places.SearchBox | null>(null);
  const onLoadPlacesApi = (ref: google.maps.places.SearchBox) => setPlacesApi(ref);

  const mapBoundaries: google.maps.LatLngBoundsLiteral = {
      north: 53.63322,
      south: 53.11473,
      west: -6.85965,
      east: -5.77620,
  }

  const addressIsOutOfBounds = (latitude: number, longitude: number): boolean => {
    return latitude < mapBoundaries.west ||
      latitude > mapBoundaries.east ||
      longitude > mapBoundaries.north ||
      longitude < mapBoundaries.south;
  }

  const onPlacesChanged = () => {
    if (!placesApi) {
      return;
    } else {
      const places = placesApi.getPlaces();
      if (!places || places.length === 0 || !places[0].geometry || !places[0].geometry.location) {
        alert('Something has gone wrong with the Places API');
        return;
      }
      const latitude = places[0].geometry.location.lat();
      const longitude = places[0].geometry.location.lng();

      if (addressIsOutOfBounds(latitude, longitude)) {
        alert('Address is out of bounds')
        return;
      } else {
        setCustomAddress(new google.maps.LatLng(latitude, longitude))
      }
    }
  }

  return <Box
    display={'flex'}
    flexDirection={'column'}
    alignItems={'center'}
  >
    <StandaloneSearchBox
      onLoad={onLoadPlacesApi}
      bounds={mapBoundaries}
      onPlacesChanged={onPlacesChanged}
    >
      <input
        type="text"
        placeholder="Show custom address on map"
        style={{
          boxSizing: `border-box`,
          border: `1px solid transparent`,
          width: `240px`,
          height: `50px`,
          marginTop: `27px`,
          padding: `0 12px`,
          borderRadius: `3px`,
          boxShadow: `0 2px 6px rgba(0, 0, 0, 0.3)`,
          fontSize: `14px`,
          outline: `none`,
          textOverflow: `ellipses`,
        }}/>
    </StandaloneSearchBox>
  </Box>
};

export default MapSearchBar;
