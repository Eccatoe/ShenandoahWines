import React, { useEffect, useState } from "react";
import AppAdapter from "../adapters/AppAdapter";
import TrailItem from "./TrailItem.jsx";

function Trails(trail) {
  const [myTrails, setMyTrails] = useState([]);
  useEffect(() => {
    AppAdapter.getTrails().then((trails) => setMyTrails(trails));
  }, []);

  function handleRedirect(){

  }

  const trailDiv = myTrails.map((trail) => (
    <>
      <h3>{trail.name}</h3>
      <TrailItem trail_stops={trail.trail_stops} />
      <button onClick={handleRedirect}>Show Directions</button>
    </>
  ));


  

  return (
    <>
      <div>{trailDiv}</div>

    </>
  );
}

export default Trails;
