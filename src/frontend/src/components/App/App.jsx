import '../../styles/main.css'
import ControlPanel from "../ControlPanel/ControlPanel.jsx";
import {useEffect, useState} from "react";

const App = () => {
  const busStopsUrl = "http://localhost:8000/api/bus_stops";

  const [busStops, setBusStops] = useState([]);

  useEffect(() => {
    // Retrieves data relating to bus stops and sets component state.
    const getBusStops = async () => {
      const dataInLocalStorage = localStorage.getItem("bus_stops");
      if (dataInLocalStorage) {
        return getBusStopsFromLocalStorage(dataInLocalStorage);
      } else {
        return await getBusStopsFromApi();
      }
    };
    getBusStops().then(data => setBusStops(data));
  }, []);

  // Retrieves bus stop data from local storage in JSON format.
  const getBusStopsFromLocalStorage = dataInLocalStorage => JSON.parse(dataInLocalStorage);

  // Retrieves bus stop data from API.
  const getBusStopsFromApi = async () => {
    const busStopsData = await fetch(busStopsUrl).then(response => response.json());
    localStorage.setItem("bus_stops", JSON.stringify(busStopsData));
    return busStopsData;
  };

  return (<div className="App">
    <ControlPanel busStops={busStops}/>
  </div>);
};

export default App;