import React from 'react'

function VarietalItem({varietal, varietals, setSelectedVarietal}) {
    const {name}=varietal
    function handleVarietalSelect(e){
        const userSelectedVarietal=varietals.find((v)=>(
            v.name===e.target.textContent
        ))
        setSelectedVarietal(userSelectedVarietal)
    }
  return (
    <div onClick={(e)=>handleVarietalSelect(e)}>
        {name}
    </div>
  )
}

export default VarietalItem