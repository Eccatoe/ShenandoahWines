import React, { useEffect } from "react";
import { WineryContext } from "./WineryContext";
import { useContext, useState } from "react";

function LaunchForm({coords, setCoords, geojson}) {
  const { wineries } = useContext(WineryContext);
  const [selection, setSelection]=useState([])
  const optionList = wineries.map((winery) => (
    <option key={winery.id} value={winery.name}>
      {winery.name}
    </option>
  ))

function handleChange(e){
    setSelection(e.target.value)
}
function handleSubmit(e){
e.preventDefault()
const winery=wineries.find((w)=>
    w.name===selection
)
const wineryCoords=[winery.longitude, winery.latitude]
setCoords([...coords, wineryCoords])
}

  return (
    <div className="tour-form">
      <div>Choose a Tour</div>
      <button>Rose</button>
      <button>Historic</button>
      <button>Randomize</button>
      <br />
      <span>or</span>
      <div>Make Your Own</div>
      <form onSubmit={(e)=> handleSubmit(e)}>
          <div>{selection}</div>
      <select value={selection} onChange={handleChange}>
        <option value="">Choose a Starting Point</option>
        {optionList}
      </select>
      <input type="submit" placeholder="Add a Stop"/>
      </form>
    </div>
  );
}

export default LaunchForm;
