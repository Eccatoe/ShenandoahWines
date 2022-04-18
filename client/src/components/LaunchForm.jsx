import React, { useEffect } from "react";
import { WineryContext } from "./WineryContext";
import { useContext, useState } from "react";
import minus from "../assets/minus.svg";
function LaunchForm({ coords, setCoords, geojson }) {
  const { wineries } = useContext(WineryContext);
  const [trailSelections, setTrailSelections] = useState([]);
  const optionList = wineries.map((winery) => (
    <option key={winery.id} value={winery.name}>
      {winery.name}
    </option>
  ));
  function handleSelect(e) {
    const selection = Array.from(
      e.target.selectedOptions,
      (item) => item.value
    );
    const trailWinery = wineries.find((w) => selection.includes(w.name));
    setCoords([...coords, [trailWinery.longitude, trailWinery.latitude]]);
    setTrailSelections([...trailSelections, [selection]]);
  }
  const trailLog = trailSelections.map((s) => (
    <div className="tour-form-log-item">
      <button className="remove" key={s.index}>
        <img src={minus} />
      </button>
      <div>{s}</div>
    </div>
  ));
  function handleSubmit(e) {
    e.preventDefault();
  }
  return (
    <div className="tour-form">
      <div className="tour-form-choose">
        <div>Trails</div>
        <button>Rose</button>
        <button>Historic</button>
        <button>Randomize</button>
      </div>
      <br />
      <span>or</span>
      <div>Make Your Own</div>
      <form onSubmit={handleSubmit}>
        <select multiple={true} onChange={(e) => handleSelect(e)}>
          {optionList}
        </select>
        <input type="submit" value="Add a Stop" />
      </form>
      <div className="tour-form-log">{trailLog}</div>
    </div>
  );
}
export default LaunchForm;