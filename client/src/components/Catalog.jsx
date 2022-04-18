import WineryMap from "./WineryMap";
import { useContext, useState } from "react";
import { WineryContext } from "./WineryContext";
import LaunchForm from "./LaunchForm";
import WineryList from "./WineryList";
import { useMap } from "react-map-gl";

function Catalog({ varietalSearchList }) {
  const { wineries } = useContext(WineryContext);
  const { mymap } = useMap();
  const [selectedWinery, setSelectedWinery] = useState(null);
  const [searchText, setSearchText] = useState("");
  const [trailMode, setTrailMode] = useState(false);
  const [coords, setCoords] = useState([]);
  const geojson = {
    type: "FeatureCollection",
    features: [
      {
        type: "Feature",
        geometry: { type: "LineString", coordinates: coords },
      },
    ],
  }

  console.log(mymap)

  const userSearchList = wineries.filter((winery) =>
    winery.name.toLowerCase().includes(searchText.toLowerCase())
  );

  const renderedSearchList =
    varietalSearchList.length > 0 ? varietalSearchList : userSearchList;

  function focusWine(e) {
    const focus = wineries.find(
      (winery) => winery.name === e.target.textContent
    );
    if (e.target.classList[1] === "clicked") {
      setSelectedWinery(focus);
      mymap.easeTo({
        center: [focus.longitude, focus.latitude],
        duration: 1000,
      });
    } else {
      handleClose();
    }
  }

  function handleClose() {
    mymap.easeTo({ center: [-78.612, 38.35], duration: 1000 });
    setSelectedWinery(null);
  }

  function handleSearch(e) {
    setSearchText(e.target.value);
    setSelectedWinery(null);
  }

  function toggleTrail() {
    setTrailMode((trailMode) => !trailMode);
  }

  return (
    <div className="winery">
      <div className="winery-box">
        <div className="winery-list">
          
          <button className="start" onClick={() => toggleTrail()}>
            Start a Trail
          </button>

          <div className="push">
            <div className="winery-list-items">
              {trailMode ? (
                <LaunchForm
                  geojson={geojson}
                  coords={coords}
                  setCoords={setCoords}
                />
              ) : (<>
              <h3>
            <span>SHENANDOAH</span> <span>VINEYARDS</span>
          </h3><div className="list-push">
                <WineryList
                  focusWine={focusWine}
                  renderedSearchList={renderedSearchList}
                /></div>
              </>
              )}
            </div>
          </div>
        </div>

        <form>
          <input
            className="search"
            placeholder="Search"
            value={searchText}
            onChange={(e) => handleSearch(e)}
          ></input>
        </form>
      </div>
      <div id="fade"></div>

      <WineryMap
        renderedSearchList={renderedSearchList}
        selectedWinery={selectedWinery}
        setSelectedWinery={setSelectedWinery}
        handleClose={handleClose}
        coords={coords}
        geojson={geojson}
        setCoords={setCoords}
      />
    </div>
  );
}

export default Catalog;
