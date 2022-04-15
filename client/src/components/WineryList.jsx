import { useState } from "react";
// import TrailLaunch from "./LaunchForm";

function WineryList({ renderedSearchList, focusWine }) {
  const [togglePage, setTogglePage] = useState(false);
  const wineryListItems = renderedSearchList.map((winery) => (
    <div>
      <div className="winery-list-item" key={winery.id}>
        {winery.name}
        <br />
      </div>
    </div>
  ));

  function handleFocus(e) {
    focusWine(e);
  }

  return (
    <>
      <div onClick={(e) => handleFocus(e)}>{wineryListItems}</div>
    </>
  );
}

export default WineryList;
