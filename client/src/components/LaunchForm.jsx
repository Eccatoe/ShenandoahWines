import React, { useEffect, useContext, useState } from "react";
import { WineryContext } from "./WineryContext";
import { useNavigate } from "react-router-dom";
import AppAdapter from '../adapters/AppAdapter'
import line from "../assets/line.svg";
import minus from "../assets/minus.svg";

function LaunchForm({ coords, setCoords, geojson }) {
  const { wineries } = useContext(WineryContext);
  const navigate = useNavigate();
  const [newStop, setNewStop] = useState({});
  const [trailName, setTrailName] = useState("");
  const [showSelect, setShowSelect] = useState(false);
  const [trails, setTrails] = useState([]);
  const [trailStops, setTrailStops] = useState([]);

  const optionList = wineries.map((winery) => (
    <option onClick={(e) => highlight(e)} key={winery.id} value={winery.id}>
      {winery.name}
    </option>
  ));

  const highlight = (e) => e.target.classList.toggle("sel");
  function handleNameChange(e) {
    setTrailName(e.target.value);
  }
  function submitName(e) {
    e.preventDefault();
    setShowSelect(true);

    fetch("/trails", {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify({
        name: trailName,
        user_id: 1,
      }),
    }).then((r) => r.json());
  }

  useEffect(() => {
    AppAdapter.getTrails()
      .then((data) => setTrails(data));
  }, [trailName]);

  useEffect(() => {
    AppAdapter.getTrailStops()
      .then((data) => setTrailStops(data));
  }, [newStop]);
console.log(trailStops)

  function handleSelect(e) {
    const selection = Array.from(
      e.target.selectedOptions,
      (item) => item.value
    );
    console.log(selection);
    const trailWinery = wineries?.find((w) =>
      selection.includes(w.id.toString())
    );
    fetch("/trail_stops", {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify({
        longitude: trailWinery.longitude,
        latitude: trailWinery.latitude,
        trail_id: trails[trails.length - 1].id,
        winery_id: trailWinery.id,
      }),
    })
      .then((res) => res.json())
      .then((data) => setNewStop(data));

    setCoords([...coords, [trailWinery.longitude, trailWinery.latitude]]);
  }

  function handleSubmit(e) {
    e.preventDefault();
    navigate("/trails");
  }
  function handleRemove(e) {
    const remove=trailStops.find((ts)=>ts.id===parseInt(e.currentTarget.value))
    console.log(88, e.currentTarget.parentNode.parentNode)
    fetch(`/trail_stops/${remove.id}`, {
      method: "DELETE"
    })
    }


  const trailLog = trailStops?.filter((s) => (s.trail.id===trails[trails.length-1].id))
  const trailFlow=trailLog.map((tl)=>(
    <div className="tf-log-item-1">
    <div className="tf-log-item-2">
      <button value={tl.id} className="remove" onClick={(e) => handleRemove(e)} key={tl.id}>
        <img className="minus" src={minus} />
      </button>
      <div>{tl.winery_name}</div>
    </div>
    <img className="line" src={line} />
  </div>
  ))
  
  return (
    <div className="tf">
      {showSelect ? (
        <h2>{trailName.toUpperCase()}</h2>
      ) : (
        <form className="tf-name" onSubmit={(e) => submitName(e)}>
          <div className="tf-header">Name your Trail</div>
          <input
            type="text"
            className="tf-name-input"
            onChange={(e) => handleNameChange(e)}
          ></input>
          <input type="submit" className="tf-btn" value="All Set!"></input>
        </form>
      )}
      {showSelect ? (
        <form className="tf-stop" onSubmit={handleSubmit}>
          <div className="tf-header">Add Your Stops</div>
          <select
            className="tf-stop-input"
            multiple={true}
            onChange={(e) => handleSelect(e)}
          >
            {optionList}
          </select>
          <input type="submit" className="tf-btn" value="Let's Go!" />
        </form>
      ) : null}
      <div className="tf-log">{trailFlow}</div>
    </div>
  );
}
export default LaunchForm;
