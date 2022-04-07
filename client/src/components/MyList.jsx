import React, { useEffect, useState, useContext} from "react";
import MyListItem from "./MyListItem";


function MyList() {
  const [drinkList, setDrinkList] = useState([]);
  const [favorite, setFavorite] = useState(false);
  const [tried, setTried] = useState(false);

  useEffect(() => {
    fetch("./user_wines")
      .then((r) => r.json())
      .then((r) => setDrinkList(r));
  }, []);


  function groupBy(array, property){
    const group={}
    for (let i=0; i<array.length; i++){
      const propVal=array[i][property]
      if(!group[propVal]){group[propVal]=[]}
      group[propVal].push(array[i])
    }
    return group
  }
  const list=groupBy(drinkList, 'tasted')
console.log(list.true)

  function handlePatch(d, e) {
    if (e.currentTarget.value === "fave") {
      setFavorite((favorite) => !favorite);
    } else if (e.currentTarget.value === "move") {
      setTried((tried) => !tried);
    }
    fetch(`/user_wines/${d.id}`, {
      method: "PATCH",
      body: JSON.stringify({
        favorite,
        tasted: tried,
      }),
      headers: {
        "Content-type": "application/json",
      },
    })
      .then((r) => r.json())
      .then(r=>console.log(r))
  }
  

  const toTryListItem= list.true?.map((d) =>
      <MyListItem key={d.id} drink={d} handlePatch={handlePatch}/>

  )

  return (
    <div className="my_list">
{toTryListItem}
    </div>
  );
}

export default MyList;
