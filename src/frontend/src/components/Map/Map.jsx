import {useLoadScript} from '@react-google-maps/api';

const Map = () => {
  const {isLoaded} = useLoadScript({
    googleMapsApiKey: process.env.REACT_APP_GOOGLE_KEY,
  });
  return isLoaded ? <div>Loaded!</div> : <div>Script loading...</div>;
};

export default Map;
