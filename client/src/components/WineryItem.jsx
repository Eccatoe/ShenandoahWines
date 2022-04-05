import React from 'react'

function WineryItem({winery, focusWine}) {
    const {name, description, address, link}=winery
    function handleFocus(e){
        focusWine(e)
    }
  return (
    <div onClick={(e)=>handleFocus(e)}>
    {name}
    </div>
  )
}

export default WineryItem