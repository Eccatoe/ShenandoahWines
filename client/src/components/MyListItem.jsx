import React, { useContext, useState } from "react";
import { WineryContext } from "./WineryContext";
import heart from "../assets/heart-outline.svg";
import add from "../assets/add-outline.svg";

function MyListItem({ drink, handlePatch, setTried, tried, setFavorite }) {
  const { wineries } = useContext(WineryContext);
  const { wine, user_id, tasted, favorite } = drink;
  const [show, setShow] = useState(true);

  function moveListItem(drink, e) {
    if (e.currentTarget.value === "fave") {
      setFavorite((favorite) => !favorite);
    } else if (e.currentTarget.value === "move") {
      setTried(tried=>!tried);
    }
    handlePatch(drink, e);
  }
  const listBlock = (
    <div>
      {wine ? (
        <div>
          <p>
            {wine.name}, {wineries.find((w) => w.id === wine.winery_id)?.name}
          </p>
          <button value="fave" onClick={(e) => moveListItem(drink, e)}>
            <img className="icon" src={heart} />
          </button>
          <button
            value="move"
            style={{ display: show ? "block" : "none" }}
            onClick={(e) => moveListItem(drink, e)}
          >
            <img className="icon" src={add}></img>
          </button>
        </div>
      ) : null}
    </div>
  );
  return (
    <>
      <div className="page">{listBlock}</div>
    </>
  );
}

export default MyListItem;
