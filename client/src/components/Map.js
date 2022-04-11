import ReactMapGL, { Source, Layer, Marker, Popup } from "react-map-gl";
import { useNavigate } from "react-router-dom";
import grape from "../assets/grape.svg";
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
  // const [rose, setRose] = useState([]);

  // useEffect(() => {
  //   fetch("/rose")
  //     .then((r) => r.json())
  //     .then((r) => setRose(r));
  // }, []);

  // console.log(rose);

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
        mapStyle="mapbox://styles/eccatoe2517/cl1qzczwl000b14p3hvnruo4h"
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
              <img style={{ height: "20px", width: "20px" }} src={grape} />
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
              <p>{selectedWinery.name}</p>
              <div
                className="popupContent"
                onClick={() => navigate(`/wineries/${selectedWinery.id}`)}
              >
                <img src={selectedWinery.image} />
              </div>
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
