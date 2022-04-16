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

function handleSelect(e){
    setSelection(e.target.value)
}
function handleSubmit(e){
e.preventDefault()
const winery=wineries.find((w)=>
    w.name===selection
)
const wineryCoords=[winery.longitude, winery.latitude]
setCoords([...coords, wineryCoords])

console.log("reg coords", coords)
console.log("geojson", geojson)
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
      <form onSubmit={handleSubmit}>
      <select multiple={true} value={selection} onChange={(e)=>handleSelect(e)}>
        <option value="">Choose a Starting Point</option>
        {optionList}
      </select>
      <input type="submit" value="Add a Stop"/>
      </form>
    </div>
  );
}

export default LaunchForm;
