import React, { useEffect, useState } from 'react'

function MyList() {
  const [drinkList, setDrinkList]=useState([])
  useEffect(()=>{
    fetch ('./user_wines')
    .then(r=>r.json())
    .then(r=>setDrinkList(r))
  },[])
  const listItem=drinkList?.map(w=>(
    <div key={w.id}>{w.wine.name} {w.wine.winery}</div>))
  return (<div>
    <div>Want to Try</div>
    {listItem}
    <div>Have Tried</div>
    </div>
  )
}

export default MyList