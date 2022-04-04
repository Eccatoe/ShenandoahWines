import ReactMapGL, { Marker, Popup } from "react-map-gl";
import { useState, useEffect } from "react";

function Map() {
  const [selectedWinery, setSelectedWinery] = useState(null);
  const [wineries, setWineries] = useState([]);
  const [viewport, setViewport] = useState({
    latitude: 38.35,
    longitude: -78.612,
    zoom:  7.4,
    height: "100vh",
    width: "50vw",
  });


  useEffect(() => {
    fetch("/wineries")
      .then((r) => r.json())
      .then((data) => setWineries(data));
  }, []);

  const wineryButton = wineries.map((winery) => (
    <button value={winery.name} onClick={focusWine}>
        {winery.name}
      </button>
  ))

  function focusWine(e) {
    const focus=wineries.find(winery=>(
      winery.name===e.target.value
    ))
      setSelectedWinery(focus)
  }

  return (
    <div>
      {wineryButton}

      <ReactMapGL
        {...viewport}
        mapboxApiAccessToken={process.env.REACT_APP_MAP_KEY}
        onViewportChange={(viewport) => {
          setViewport(viewport);
        }}
        mapStyle="mapbox://styles/eccatoe2517/cl1kwb7rz003i15qmly0oyid5"
      >
        {wineries.map((winery) => (
          <Marker
            key={winery.name}
            latitude={winery.latitude}
            longitude={winery.longitude}
          >
            <button
              onClick={(e) => {
                e.preventDefault();
                setSelectedWinery(winery);
              }}
            >
              <img
                style={{ height: "20px", width: "20px" }}
                src="https://cdn-icons.flaticon.com/png/128/3083/premium/3083651.png?token=exp=1649094765~hmac=27a9cf966b596f9c10fd65c77ce7750f"
              />
            </button>
          </Marker>
        ))}
        {selectedWinery ? (
          <Popup
            latitude={selectedWinery.latitude}
            longitude={selectedWinery.longitude}
            onClose={() => setSelectedWinery(null)}
          >
            {selectedWinery.name}
          </Popup>
        ) : null}
      </ReactMapGL>
    </div>
  );
}

export default Map;
