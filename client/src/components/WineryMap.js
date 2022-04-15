import Map, {
  FullscreenControl,
  Source,
  Layer,
  Marker,
  Popup,
  NavigationControl,
  ScaleControl,
  useMap,
} from "react-map-gl";
import { useNavigate } from "react-router-dom";
import { useEffect, useState, useCallback } from "react";
import "mapbox-gl/dist/mapbox-gl.css";

function WineryMap({
  selectedWinery,
  setSelectedWinery,
  renderedSearchList,
  handleClose,
}) {
  const navigate = useNavigate();
  const { mymap } = useMap();
  const [inputValue, setInputValue] = useState("");
  const [hasError, setError] = useState(false);

  useEffect(() => {
    if (!mymap) {
      return undefined;
    }

    const onMove = () => {
      const { lng, lat } = mymap.getCenter();
      setInputValue(`${lng.toFixed(3)}, ${lat.toFixed(3)}`);
      setError(false);
    };
    mymap.on("move", onMove);
    onMove();

    return () => {
      mymap.off("move", onMove);
    };
  }, [mymap]);

  const onChange = useCallback((e) => {
    setInputValue(e.target.value);
  }, []);

  const onSubmit = useCallback(() => {
    const [lng, lat] = inputValue.split(",").map(Number);
    if (Math.abs(lng) <= 180 && Math.abs(lat) <= 85) {
      mymap.easeTo({
        center: [lng, lat],
        duration: 1000,
      });
    } else {
      setError(true);
    }
  }, [mymap, inputValue]);

  //----------------------------------------------------------


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
        <div
          style={{
            padding: 12,
            fontFamily: "sans-serif",
            position: "absolute",
          }}
        >
          <span>MAP CENTER: </span>
          <input type="text" value={inputValue} onChange={onChange} 
                  style={{color: hasError ? 'red' : 'black'}}
 />
          <button onClick={onSubmit}>GO</button>
        </div>
            <FullscreenControl/>
            <NavigationControl/>
        
            <ScaleControl />
        {renderedSearchList.map((winery) => (
          <Marker
            key={winery.name}
            latitude={winery.latitude}
            longitude={winery.longitude}
          >
            <button className="pin"
              onClick={(e) => {
                e.preventDefault();
                setSelectedWinery(winery);
              }}
            >
            </button>
          </Marker>
        ))}
        {selectedWinery !==null ? (
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
