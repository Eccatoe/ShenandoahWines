import React, { useEffect, useState} from "react";
import MyListItem from "./MyListItem";
import Share from './Share'

function MyList() {
  const [drinkList, setDrinkList] = useState([]);
  const [toTryList, setToTryList] = useState([]);
  const [triedList, setTriedList] = useState([]);
  const [favorite, setFavorite] = useState(false);
  const [tried, setTried] = useState(false);

  useEffect(() => {
    fetch("./user_wines")
      .then((r) => r.json())
      .then((drinks) => setDrinkList(drinks));
  }, [tried]);
  useEffect(() => {
    setToTryList(drinkList?.filter((d) => d.tasted === false));
  }, [drinkList, tried]);
  useEffect(() => {
    setTriedList(drinkList?.filter((d) => d.tasted === true));
  }, [drinkList, tried]);

  function handlePatch(drink, review) {
    console.log("25 drink", drink)
    console.log("26 review",review)
    fetch(`/user_wines/${drink.id}`, {
      method: "PATCH",
      body: JSON.stringify({
        favorite,
        tasted: tried,
        review
      }),
      headers: {
        "Content-type": "application/json",
      },
    })
    .then((r) => r.json())
    // .then(data=>(data));
    .then((r) => console.log(r))
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
      <Share/>
    </div>
  );
}

export default MyList;
