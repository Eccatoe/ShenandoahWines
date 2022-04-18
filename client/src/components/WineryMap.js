import Map, { Source, Layer, Marker, Popup, useMap} from "react-map-gl";
import { useNavigate } from "react-router-dom";
import MapControls from "./MapControls.jsx";


function WineryMap({
  selectedWinery,
  setSelectedWinery,
  renderedSearchList,
  handleClose,
  coords,
  geojson,
}) {
  const navigate = useNavigate();
  const {mymap}=useMap()
 
  const newLayer = {
    id: "rose",
    type: "line",
  };

  



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
        mapStyle="mapbox://styles/lcatoe/cl2584q14009b14qvkwbvstv2"
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
        <Source id="trail" type="geojson" data={geojson}>
          <Layer {...newLayer} />
        </Source>
      </Map>
    </div>
  );
}
export default WineryMap;