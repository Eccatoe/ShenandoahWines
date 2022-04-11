// import React, { useEffect } from "react";
// import { WineryContext } from "./WineryContext";
// import { useContext, useState } from "react";

// function LaunchForm() {
//   const { wineries } = useContext(WineryContext);
//   const [tourCoords, setTourCoords]=useState([])
//   const [geo, setGeo]=useState([])
//   console.log(wineries)
//   const optionList = wineries.map((winery) => (
//     <option key={winery.id} value={winery.id}>
//       {winery.name}
//     </option>
//   ))
//   useEffect(()=>{
//       fetch('/static/media/tours.dd3cf7d9eaf52b6626f7.geoJSON')
//       .then(r=>r.json())
//       .then(data=>setGeo(data))
//   },[])

// console.log(geo)
//   return (
//     <div>
//       <div>Choose a Tour</div>
//       <button>Rose</button>
//       <button>Historic</button>
//       <button>Randomize</button>
//       <br />
//       <span>or</span>
//       <div>Make Your Own</div>
//       <label></label>
//       <select>
//         <option value="">Choose a Starting Point</option>
//         {optionList}
//       </select>
//     </div>
//   );
// }

// export default LaunchForm;
