import {useLoadScript, GoogleMap} from '@react-google-maps/api';
import {useMemo} from 'react';

const Map = () => {
  const {isLoaded} = useLoadScript({
    googleMapsApiKey: process.env.REACT_APP_GOOGLE_KEY,
  });
  const centerCoords = useMemo(() => (
    {lat: 53.30947559137038, lng: -6.218868208190408}
  ), []);
  const mapOptions = useMemo(() => (
    {streetViewControl: false,
      mapTypeControl: false,
      clickableIcons: false,
      fullscreenControl: false}
  ), []);

  return !(isLoaded) ?
    <div className="loading">Map loading...</div>:
    <div className="map">
      <GoogleMap
        zoom={15}
        center={centerCoords}
        options={mapOptions}
        mapContainerStyle={{width: '100%', height: '100vh'}}>
      </GoogleMap>
    </div>;
};

export default Map;
