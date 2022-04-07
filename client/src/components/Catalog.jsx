import Map from "./Map";
import { useContext, useState } from "react";
import { WineryContext } from "./WineryContext";
import WineryItem from "./WineryItem";

function Catalog({ varietalSearchList }) {
  const { wineries } = useContext(WineryContext);
  const [selectedWinery, setSelectedWinery] = useState(null);
  const [viewport, setViewport] = useState({
    latitude: 38.35,
    longitude: -78.612,
    zoom: 7.4,
    height: "100vh",
    width: "60vw",
  });
  const [searchView, setSearchView] = useState({ ...viewport });
  const [searchText, setSearchText] = useState("");
  const userSearchList = wineries.filter((winery) =>
    winery.name.toLowerCase().includes(searchText.toLowerCase())
  );

  const renderedSearchList =
    varietalSearchList.length > 0 ? varietalSearchList : userSearchList;
    const uniqueRenderedList=[...new Set(renderedSearchList)]
    console.log(uniqueRenderedList)
  const wineryListItems = renderedSearchList.map((winery) => (
    <WineryItem key={winery.id} winery={winery} focusWine={focusWine} />
  ));

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

  return (
    <div className="catalog">
      <form>
        <input
          placeholder="Search"
          value={searchText}
          onChange={(e) => handleSearch(e)}
        ></input>
      </form>
      <div className="winery">{wineryListItems}</div>
      <Map
        renderedSearchList={renderedSearchList}
        userSearchList={userSearchList}
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
