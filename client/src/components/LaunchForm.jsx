import React, { useEffect } from "react";
import { WineryContext } from "./WineryContext";
import { useContext, useState } from "react";
import minus from "../assets/minus.svg";
function LaunchForm({ coords, setCoords, geojson }) {
  const { wineries } = useContext(WineryContext);
  const [trailSelections, setTrailSelections] = useState([]);
  const [trailName, setTrailName] = useState("");
  const [showSelect, setShowSelect] = useState(false);
  const [renderPage, setRenderPage] = useState(false);
  const [trails, setTrails] = useState([]);
  const optionList = wineries.map((winery) => (
    <option key={winery.id} value={winery.name}>
      {winery.name}
    </option>
  ));

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

  useEffect(() => {
    fetch("/trails")
      .then((r) => r.json())
      .then((data) => setTrails(data));
  }, [renderPage, trailSelections]);

  function handleSelect(e) {
    const selection = Array.from(
      e.target.selectedOptions,
      (item) => item.value
    );
    const trailWinery = wineries.find((w) => selection.includes(w.name));
    setCoords([...coords, [trailWinery.longitude, trailWinery.latitude]]);
    setTrailSelections([...trailSelections, [selection]]);
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
  }

  function handleSubmit(e) {
    e.preventDefault();
  }

  const trailLog = trailSelections.map((s) => (
    <div className="tour-form-log-item">
      <button className="remove" key={s.index}>
        <img src={minus} />
      </button>
      <div>{s}</div>
    </div>
  ));
  console.log(80, trails?.length>0? trails[trails.length - 1].trail_stops : null)
  return (
    <div className="tour-form">
      <div className="tour-form-choose">
        <div>Trails</div>
        <button>Rose</button>
        <button>Historic</button>
        <button>Randomize</button>
      </div>
      <div>Make Your Own</div>
      <form onSubmit={(e) => submitName(e)}>
        Name your Trail
        <input type="text" onChange={(e) => handleNameChange(e)}></input>
        <input type="submit" value="All Set!"></input>
      </form>
      {showSelect ? (
        <form onSubmit={handleSubmit}>
          <select multiple={true} onChange={(e) => handleSelect(e)}>
            {optionList}
          </select>
          <input type="submit" value="Let's Go!" />
        </form>
      ) : null}
      <div className="tour-form-log">{trailLog}</div>
    </div>
  );
}
export default LaunchForm;
