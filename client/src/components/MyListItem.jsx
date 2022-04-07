import React, { useContext, useState } from "react";
import { WineryContext } from "./WineryContext";
import heart from "../assets/heart-outline.svg";
import add from "../assets/add-outline.svg";

function MyListItem({ drink, handlePatch }) {
  const { wineries } = useContext(WineryContext);
  const { wine, user_id, tried, favorite } = drink;
  const [section, setSection]=useState(false)

  function moveListItem(drink,e){
      handlePatch(drink,e)
      console.log(e.currentTarget.classList)
  }
  const listBlock = (
    <div>
      <p>
        {wine.name}, {wineries.find((w) => w.id === wine.winery_id)?.name}
      </p>
      <button value="fave" onClick={(e) => moveListItem(drink, e)}>
        <img className="icon" src={heart} />
      </button>
      <button value="move" className="hi" onClick={(e) => moveListItem(drink, e)}>
        <img className="icon" src={add}></img>
      </button>
    </div>
  );
  return (
    <>
      <div className="page">
          
          <div><p>To Try(False)</p>{section===false && listBlock}</div>
          <div><p>Tried(True)</p>{section===true && listBlock}</div>
          </div>
    </>
  );
}

export default MyListItem;
