import React, { useEffect, useContext, useState } from "react";
import { WineryContext } from "./WineryContext";
import { useNavigate } from "react-router-dom";
import line from "../assets/line.svg";
import minus from "../assets/minus.svg";

function LaunchForm({ coords, setCoords, geojson }) {
  const { wineries } = useContext(WineryContext);
  const navigate = useNavigate();
  const [trailSelections, setTrailSelections] = useState([]);
  const [trailWinery, setTrailWinery] = useState({});
  const [trailName, setTrailName] = useState("");
  const [showSelect, setShowSelect] = useState(false);
  const [renderPage, setRenderPage] = useState(false);
  const [trails, setTrails] = useState([]);
  const [trailStops, setTrailStops] = useState([]);

  const optionList = wineries.map((winery) => (
    <option onClick={(e)=>highlight(e)} key={winery.id} value={winery.name}>
      {winery.name}
    </option>
  ));

  useEffect(() => {
    fetch("/trails")
      .then((r) => r.json())
      .then((data) => setTrails(data));
  }, [renderPage, trailSelections]);

  useEffect(() => {
    fetch("./trail_stops")
      .then((r) => r.json())
      .then((data) => setTrailStops(data));
  }, [trailSelections]);
  
  function highlight(e){
    e.target.classList.toggle("sel")
  }
  function handleNameChange(e) {
    setTrailName(e.target.value);
  }

  function submitName(e) {
    e.preventDefault();
    setShowSelect(true);
    setRenderPage((renderPage) => !renderPage);

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


  function handleSelect(e) {
    const selection = Array.from(
      e.target.selectedOptions,
      (item) => item.value
    );

    const userWinery = wineries.find((w) => selection.includes(w.name));
    if (!trailSelections.flat().includes(userWinery)) {
      setTrailWinery(userWinery);
      setTrailSelections([...trailSelections, trailWinery]);
      setCoords([...coords, [trailWinery.longitude, trailWinery.latitude]]);
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
      }).then((res) => console.log(res.ok));
    } else if (trailSelections.flat().includes(userWinery))  {
      const remove=trailStops.find((ts)=>userWinery.name===ts.winery_name)
      fetch(`/trail_stops/${remove.id}`, {
        method: "DELETE"
      }).then((res) => console.log(res.ok));
      // console.log(81, remove.id)
      // console.log(trailWinery)
      // console.log(83, trailSelections)
    }
  }

  function handleSubmit(e) {
    e.preventDefault();
    navigate("/trails");
  }
  function handleRemove(e) {
    e.currentTarget.parentNode.parentNode.remove();
    const itemToRemove = e.currentTarget.parentNode.textContent;
  }

  let trailId=trails.length>0? trails[trails.length - 1].id : null
  const userStops=(trailStops.filter((ts)=>ts.trail.id===trailId))
  console.log(102, userStops)
  const trailLog = userStops.map((s) => (
    <div className="tf-log-item-1">
      <div className="tf-log-item-2">
        <button
          className="remove"
          onClick={(e) => handleRemove(e)}
          key={s.id}
        >
          <img className="minus" src={minus} />
        </button>
        <div>{s.winery_name}</div>
      </div>
      <img className="line" src={line} />
    </div>
  ));
  return (
    <div className="tf">
      <div className="tf-choose">
        <div>Trails</div>
        <button>Rose</button>
        <button>Historic</button>
        <button>Randomize</button>
      </div>
      {showSelect ? (
        <h2>{trailName}</h2>
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
      <div className="tf-log">{trailLog}</div>
    </div>
  );
}
export default LaunchForm;
