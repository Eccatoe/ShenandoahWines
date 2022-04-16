import Map, { Source, Layer, Marker, Popup } from "react-map-gl";
import { useNavigate } from "react-router-dom";
import {useState} from 'react'
import "mapbox-gl/dist/mapbox-gl.css";
import MapControls from "./MapControls.jsx";

function WineryMap({
  selectedWinery,
  setSelectedWinery,
  renderedSearchList,
  handleClose,
}) {
  const navigate = useNavigate();
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
  const [coords, setCoords]=useState(geojson.features[0].geometry.coordinates)


  
  const newLayer = {
    id: "rose",
    type: "line",
  };


console.log("features", geojson.features[0].geometry.coordinates)



  return (
    <div id="map">
      <Map
        id="mymap"
        initialViewState={{
          latitude: 38.35,
          longitude: -78.612,
          zoom: 7.4,
        }}
        mapboxAccessToken={process.env.REACT_APP_MAPBOX_ACCESS_TOKEN}
        mapStyle="mapbox://styles/eccatoe2517/cl1zbrhfv003916l5alc88c87"
      >
        <MapControls />
        {renderedSearchList.map((winery) => (
          <Marker
            key={winery.name}
            latitude={winery.latitude}
            longitude={winery.longitude}
          >
            <button
              className="pin"
              onClick={(e) => {
                e.preventDefault();
                setSelectedWinery(winery);
              }}
            ></button>
          </Marker>
        ))}
        {selectedWinery !== null ? (
          <Popup
            latitude={selectedWinery.latitude}
            longitude={selectedWinery.longitude}
            onClose={handleClose}
          >
            <div className="popupContent">
              <p>{selectedWinery.name.toUpperCase()}</p>
              <div
                className="popupContent"
                onClick={() => navigate(`/wineries/${selectedWinery.id}`)}
              >
                <img src={selectedWinery.image} />
              </div>
            </div>
          </Popup>
        ) : null}
        {/* <Source id="trail" type="geojson" data={geojson}> */}
        {/* <Layer {...newLayer} /> */}
        {/* </Source> */}
      </Map>
    </div>
  );
}
export default WineryMap;
