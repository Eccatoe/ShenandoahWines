import ReactMapGL, {
  FullscreenControl,
  Source,
  Layer,
  Marker,
  Popup,
  NavigationControl,
  ScaleControl,
  GeolocateControl,
} from "react-map-gl";
import { useNavigate } from "react-router-dom";
import circle from "../assets/circle.svg";
import { useContext, useEffect, useState, useRef } from "react";

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
  // const mapContainer = useRef(null);
  // const map = useRef(null);
  // const [lng, setLng] = useState(-78.612);
  // const [lat, setLat] = useState(38.35);
  // const [zoom, setZoom] = useState(7.4);

  // useEffect(()=>{
  //   if (map.current) return;
  //   map.current=new mapboxgl.Map({
  //     container: mapContainer.current,
  //     style: "mapbox://styles/eccatoe2517/cl1zbrhfv003916l5alc88c87",
  //     center: [lng, lat],
  //     zoom: zoom
  //   })
  // })

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
        mapStyle="mapbox://styles/eccatoe2517/cl1zbrhfv003916l5alc88c87"
      >
        <div className="map-controls">
          <div className="full-control">
            <span>Toggle Full Screen</span>
            <FullscreenControl />
          </div>
          <div className="nav-control"><span>Navigation Control</span>
            <NavigationControl />
          </div>
          <div className="scale-control"><span>Scale Control</span>
            <ScaleControl />
          </div>
          <div className="geo-control"><span>Geo Control</span>
            <GeolocateControl />
          </div>
        </div>

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
              {/* <img className="marker" style={{ height: "20px", width: "20px" }} src={circle} /> */}
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
        <Source id="trail" type="geojson" data={geojson}>
          <Layer {...newLayer} />
        </Source>
      </ReactMapGL>
    </div>
  );
}
export default Map;
