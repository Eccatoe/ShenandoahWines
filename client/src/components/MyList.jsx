import React, { useEffect, useState, useContext } from "react";
import MyListItem from "./MyListItem";

function MyList() {
  const [drinkList, setDrinkList] = useState([]);
  const [toTryList, setToTryList] = useState([]);
  const [triedList, setTriedList] = useState([]);
  const [favorite, setFavorite] = useState(false);
  const [tried, setTried] = useState(false);

  useEffect(() => {
    fetch("./user_wines")
      .then((r) => r.json())
      .then((drink) => setDrinkList(drink));
  }, [tried]);

  useEffect(() => {
    setToTryList(drinkList.filter((d) => d.tasted === false));
  }, [drinkList, tried]);

  useEffect(() => {
    setTriedList(drinkList.filter((d) => d.tasted === true));
  }, [drinkList, tried]);

  function handlePatch(drink, e) {
    console.log(drink);
    if (e.currentTarget.value === "fave") {
      setFavorite((favorite) => !favorite);
    } else if (e.currentTarget.value === "move") {
      setTried((tried) => !tried);
    }
    fetch(`/user_wines/${drink.id}`, {
      method: "PATCH",
      body: JSON.stringify({
        favorite,
        tasted: tried,
      }),
      headers: {
        "Content-type": "application/json",
      },
    }).then((r) => console.log(r.ok));
  }

  const toTryListItem = toTryList?.map((d) => (
    <MyListItem key={d.id} drink={d} handlePatch={handlePatch} />
  ));
  const triedListItem = triedList?.map((d) => (
    <MyListItem key={d.id} drink={d} handlePatch={handlePatch} />
  ));

  return (
    <div className="my_list">
      <h1>To Try</h1>
      {toTryListItem}
      <h1>Have Tried</h1>
      {triedListItem}
    </div>
  );
}

export default MyList;
