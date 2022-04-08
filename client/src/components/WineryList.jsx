import React from "react";

function WineryList({ winery, focusWine }) {
  const { name } = winery;


  function handleFocus(e) {
    focusWine(e);
  }
  return <div onMouseOver={(e) => handleFocus(e)}>{name}</div>;
}

export default WineryList;
