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
  console.log(toTryList);
  useEffect(() => {
    setTriedList(drinkList.filter((d) => d.tasted === true));
  }, [drinkList, tried]);

  function handlePatch(drink, e) {
    fetch(`/user_wines/${drink.id}`, {
      method: "PATCH",
      body: JSON.stringify({
        favorite,
        tasted: tried,
      }),
      headers: {
        "Content-type": "application/json",
      },
    }).then((r) => r.json());
    // .then(data=>(data));
  }

  const toTryListItem = toTryList?.map((d) => (
    <MyListItem
      key={d.id}
      drink={d}
      handlePatch={handlePatch}
      tried={tried}
      setTried={setTried}
      favorite={favorite}
      setFavorite={setFavorite}
    />
  ));
  const triedListItem = triedList?.map((d) => (
    <MyListItem
      key={d.id}
      drink={d}
      handlePatch={handlePatch}
      tried={tried}
      setTried={setTried}
      favorite={favorite}
      setFavorite={setFavorite}
    />
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
