import './App.css';
import './styles/main.css'
import ControlPanel from "./components/ControlPanel/ControlPanel.jsx";
import {useEffect, useState} from "react";

function App() {

    const [busStops, setBusStops] = useState([])

    useEffect(() => { getBusStops().then(data => setBusStops(data)) }, [])

    const getBusStops = async() => {
        const dataInLocalStorage = localStorage.getItem("bus_stops");
        if (dataInLocalStorage) {
            return JSON.parse(dataInLocalStorage)
        }
        else {
            const busStopsApiData = await fetch("http://127.0.0.1:8000/api/bus_stops");
            return busStopsApiData.json();
        }
    }

  return (
    <div className="App">
        <ControlPanel/>
    </div>
  );
}

export default App;
