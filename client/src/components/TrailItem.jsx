import React from "react";

function TrailItem(trail_stops) {
 

  const formatTrail = Object.values(trail_stops)?.map((stop) =>
    stop.map((ts) => (
      <div className="trails-list-item">
        <h4>{ts.winery_name}</h4>
        <span>{ts.winery_address}</span>
      </div>
    ))
  );

  return <>{formatTrail}</>;
}

export default TrailItem;

