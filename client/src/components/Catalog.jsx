import MapGL from "./WineryMap";
import { useContext, useState } from "react";
import { WineryContext } from "./WineryContext";
// import LaunchForm from "./LaunchForm";
import WineryList from "./WineryList";

function Catalog({ varietalSearchList }) {
  const { wineries } = useContext(WineryContext);
  const [selectedWinery, setSelectedWinery] = useState(null);
  const [displayForm, setDisplayForm] = useState(false);
  const [viewport, setViewport] = useState({
    latitude: 38.35,
    longitude: -78.612,
    zoom: 7.4,
    height: "100vh",
    width: "60vw",
    bearing: 0,
          pitch: 0
  });
  const [searchView, setSearchView] = useState({ ...viewport });
  const [searchText, setSearchText] = useState("");
  const userSearchList = wineries.filter((winery) =>
    winery.name.toLowerCase().includes(searchText.toLowerCase())
  );

  const renderedSearchList =
    varietalSearchList.length > 0 ? varietalSearchList : userSearchList;

  function focusWine(e) {
    const focus = wineries.find(
      (winery) => winery.name === e.target.textContent
    );
    setSelectedWinery(focus);
    setSearchView({
      ...viewport,
      latitude: focus.latitude,
      longitude: focus.longitude,
      zoom: 9,
    });
    setViewport(searchView);
  }
  function handleSearch(e) {
    setSearchText(e.target.value);
    setSelectedWinery(null);
  }
console.log(process.env)
  function handleToggle() {
    setDisplayForm((displayForm) => !displayForm);
  }
  return (
    <div className="winery">
      <div className="winery-box">
        <div className="winery-list">
          <h3><span>SHENANDOAH</span> <span>VINEYARDS</span></h3>
          <div className="push">
          <div
            style={{ display: displayForm ? "none" : "block" }}
             className="winery-list-items"
          >
            <WineryList
              focusWine={focusWine}
              renderedSearchList={renderedSearchList}
            />
          </div>
          </div>
        </div>
        <div className="launchForm" >
        <div style={{ display: displayForm ? "block" : "none" }}>
          {/* <LaunchForm /> */}
        </div>
        {/* <button onClick={handleToggle}>
          {displayForm ? "Back" : "Start Your Own Wine Tour!"}
        </button> */}
        
        </div>
        <form>
          <input
            placeholder="Search"
            value={searchText}
            onChange={(e) => handleSearch(e)}
          ></input>
        </form>
      </div>
      <div id="fade"></div>

      <MapGL
        renderedSearchList={renderedSearchList}
        selectedWinery={selectedWinery}
        setSelectedWinery={setSelectedWinery}
        viewport={viewport}
        setViewport={setViewport}
        searchView={searchView}
        setSearchView={setSearchView}
      />
    </div>
  );
}

export default Catalog;
