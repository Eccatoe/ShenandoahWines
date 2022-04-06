import React from 'react'

function VarietalItem({varietal, varietals, setSelectedVarietal}) {
    const {name}=varietal
    function handleVarietalSelect(e){
        const userSelectedVarietal=varietals.find((v)=>(
            v.name===e.target.value
        ))
        setSelectedVarietal(userSelectedVarietal)
    }
  return (
    <button value={name} onClick={(e)=>handleVarietalSelect(e)}>
        {name}
    </button>
  )
}

export default VarietalItem