import WineryMap from "./WineryMap";
import { useContext, useState } from "react";
import { WineryContext } from "./WineryContext";
// import LaunchForm from "./LaunchForm";
import WineryList from "./WineryList";
import { useMap } from "react-map-gl";

function Catalog({ varietalSearchList }) {
  const { wineries } = useContext(WineryContext);
  const { mymap } = useMap();
  const [selectedWinery, setSelectedWinery] = useState(null);
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
  console.log(selectedWinery);

  function handleClose() {
    mymap.easeTo({ center: [-78.612, 38.35], duration: 1000 });
    setSelectedWinery(null);

  }

  function handleSearch(e) {
    setSearchText(e.target.value);
    setSelectedWinery(null);
  }

  return (
    <div className="winery">
      <div className="winery-box">
        <div className="winery-list">
          <h3>
            <span>SHENANDOAH</span> <span>VINEYARDS</span>
          </h3>
          <div className="push">
            <div className="winery-list-items">
              <WineryList
                focusWine={focusWine}
                renderedSearchList={renderedSearchList}
              />
            </div>
          </div>
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

      <WineryMap
        renderedSearchList={renderedSearchList}
        selectedWinery={selectedWinery}
        setSelectedWinery={setSelectedWinery}
        handleClose={handleClose}
      />
    </div>
  );
}

export default Catalog;
