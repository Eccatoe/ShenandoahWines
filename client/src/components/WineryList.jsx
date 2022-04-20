import { useState } from "react";
import { useMap } from "react-map-gl";

function WineryList({ renderedSearchList, focusWine }) {
  const { mymap } = useMap();
  const wineryListItems = renderedSearchList.map((winery) => (
      <div className="winery-list-item"  key={winery.id}>
        {winery.name}
        <br />
      </div>
  ));

  function handleFocus(e) {
    e.target.classList.add("clicked");
    console.log(16, e.target.classList)
    focusWine(e);
  }

  return (
    <>
      <div onClick={(e) => handleFocus(e)}>{wineryListItems}</div>
    </>
  );
}

export default WineryList;
