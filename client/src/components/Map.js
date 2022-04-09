import ReactMapGL, { Source, Layer, Marker, Popup } from "react-map-gl";
import { useNavigate } from "react-router-dom";
import { WineryContext } from "./WineryContext";
import { useContext, useEffect, useState } from "react";

function Map({
  selectedWinery,
  setSelectedWinery,
  renderedSearchList,
  viewport,
  setViewport,
  searchView,
  setSearchView,
}) {
  const navigate = useNavigate();
  const [rose, setRose]=useState([])

 useEffect(()=>{
  fetch('/rose')
  .then(r=>r.json())
  .then(r=>setRose(r))
 },[]) 

  console.log(rose)

  function handleClose() {
    setSearchView(viewport);
    setSelectedWinery(null);
  }

  const newLayer = {
    id: "rose_trail",
    type: "line",
  };
  const geojson = {
    type: "FeatureCollection",
    features: [
      {
        type: "Feature",
        geometry: {
          type: "LineString",
          coordinates: [
            [-78.22913631587828, 38.840224786386315],
            [-78.23071314655078, 39.125878355285714],
            [-79.24127481590128, 37.94223864623973],
          ],
        },
      },
    ],
  };

  return (
    <div id="map">
      <ReactMapGL
        {...searchView}
        mapboxApiAccessToken={process.env.REACT_APP_MAP_KEY}
        onViewportChange={(viewport) => {
          setViewport(viewport);
        }}
        mapStyle="mapbox://styles/eccatoe2517/cl1kwb7rz003i15qmly0oyid5"
      >
        {renderedSearchList.map((winery) => (
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
            onClose={() => handleClose()}
          >
            <div className="popupContent">
              {selectedWinery.name}
              <a target="_blank" href={selectedWinery.link}>
                Visit
              </a>
              <div onClick={() => navigate(`/wineries/${selectedWinery.id}`)}>
                View Details
              </div>
              <img src={selectedWinery.image} />
            </div>
          </Popup>
        ) : null}
        <Source id="trail" type="geojson" data={geojson}>
          <Layer {...newLayer} />
        </Source>
      </ReactMapGL>
    </div>
  );
}
export default Map;
