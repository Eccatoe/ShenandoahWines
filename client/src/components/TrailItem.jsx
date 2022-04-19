import React from "react";

function TrailItem(trail_stops) {
 

  const formatTrail = Object.values(trail_stops)?.map((stop) =>
    stop.map((ts) => (
      <>
        <div>{ts.winery_name}</div>
        <div>{ts.winery_address}</div>
      </>
    ))
  );

  return <>{formatTrail}</>;
}

export default TrailItem;

