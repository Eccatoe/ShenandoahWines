import ReactMapGL, { Marker, Popup } from "react-map-gl";
import { useNavigate } from "react-router-dom";

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
  function handleClose() {
    setSearchView(viewport);
    setSelectedWinery(null);
  }

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
      </ReactMapGL>
    </div>
  );
}

export default Map;
