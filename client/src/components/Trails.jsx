import React, { useEffect, useState } from "react";
import {Link} from "react-router-dom"
import AppAdapter from "../adapters/AppAdapter";
import TrailItem from "./TrailItem.jsx";

function Trails() {
  const [myTrails, setMyTrails] = useState([]);
  useEffect(() => {
    AppAdapter.getTrails().then((trails) => setMyTrails(trails));
  }, []);

  

  function getDirections(e){
      const trailSelect=myTrails.find((trail)=>trail.name===e.target.value)
    const trailCoords=trailSelect?.trail_stops.map((stop)=>stop.coordinates)
    const query=trailCoords?.join("/");
    window.open(`https://www.google.com/maps/dir/${query}`)
// 
  }

  const trailDiv = myTrails.map((trail) => (
    <>
      <h3>{trail.name}</h3>
      <TrailItem trail_stops={trail.trail_stops}/>
      <button value={trail.name} onClick={(e)=>getDirections(e)}>Get Directions
      </button>

    </>
  ))

  return (
    <>
      <div >{trailDiv}</div>

    </>
  );
}

export default Trails;
