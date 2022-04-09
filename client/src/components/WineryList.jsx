import { useState } from "react";
import TrailLaunch from "./LaunchForm";

function WineryList({ renderedSearchList, focusWine }) {
  const [togglePage, setTogglePage] = useState(false);
  const wineryListItems = renderedSearchList.map((winery) => (
    <div key={winery.id}>{winery.name}</div>
  ));

  function handleFocus(e) {
    focusWine(e);
  }
  function handleTrailClick() {
    setTogglePage((togglePage) => !togglePage);
  }

  return (
    <>
      <div onClick={(e) => handleFocus(e)}>{wineryListItems}</div>

      <button onClick={handleTrailClick} className="trailButton"></button>
    </>
  );
}

export default WineryList;
