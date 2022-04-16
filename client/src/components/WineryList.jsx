import { useCallback } from "react";
import { useMap } from "react-map-gl";

function WineryList({ renderedSearchList, focusWine }) {
  const { mymap } = useMap();
  const wineryListItems = renderedSearchList.map((winery) => (
    <div>
      <div className="winery-list-item" key={winery.id}>
        {winery.name}
        <br />
      </div>
    </div>
  ));

  function handleFocus(e) {
    e.target.classList.toggle("clicked");
    focusWine(e);
  }

  return (
    <>
      <div onClick={(e) => handleFocus(e)}>{wineryListItems}</div>
    </>
  );
}

export default WineryList;
