import React, { useEffect, useState } from "react";
import { Link } from "react-router-dom";
import directions from "../assets/directions.svg";
import AppAdapter from "../adapters/AppAdapter";
import TrailItem from "./TrailItem.jsx";

function Trails() {
  const [myTrails, setMyTrails] = useState([]);
  useEffect(() => {
    AppAdapter.getTrails().then((trails) => setMyTrails(trails));
  }, []);

  function getDirections(e) {
    const trailSelect = myTrails.find((trail) => trail.name === e.target.value);
    const trailCoords = trailSelect?.trail_stops.map(
      (stop) => stop.coordinates
    );
    const query = trailCoords?.join("/");
    window.open(`https://www.google.com/maps/dir/${query}`);
    //
  }

  const trailDiv = myTrails.map((trail) => (
    <div>
      <h3 className="trails-header">{trail.name}<button value={trail.name} onClick={(e) => getDirections(e)}>
        <img src={directions}></img>
      </button></h3>
      <div className="trails-list">
        <TrailItem trail_stops={trail.trail_stops} />
      </div>
      
    </div>
  ));
  const string = "HIT THE WINDING ROAD";
  const titleSpan = string.split(/(\s+)/);
  const letters = titleSpan.map((s) => s.split(""));
  const title = letters.flat().map((l) => <div>{l}</div>);
  console.log(letters);

  return (
    <>
      <div className="trails">
        <div className="trails-title">{title}</div>
        <div className="trails-bg"></div>{" "}
        <p className="trails-content">{trailDiv}</p>
      </div>
    </>
  );
}

export default Trails;
