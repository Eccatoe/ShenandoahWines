import React, { useEffect, useState } from "react";
import MyListItem from "./MyListItem";
import Share from "./Share";

function MyList() {
  const [drinkList, setDrinkList] = useState([]);
  // const [toTryList, setToTryList] = useState([]);
  // const [triedList, setTriedList] = useState([]);
  // const [favorite, setFavorite] = useState(false);
  // const [tried, setTried] = useState(false);
  // const [userReview, setUserReview] = useState("");
  const [newPhoto, setNewPhoto] = useState({});

  useEffect(() => {
    fetch("/user_wines")
      .then((r) => r.json())
      .then((drinks) => setDrinkList(drinks));
  }, []);

  function toggleFavorite(drinkId) {
    const updatedList = drinkList.map((drink) => {
      if (drink.id === drinkId) {
        return { ...drink, favorite: !drink.favorite, tasted: true };
      } else {
        return drink;
      }
    });

    setDrinkList(updatedList);
  }

  // useEffect(() => {
  //   setToTryList(drinkList?.filter((d) => d.tasted === false));
  // }, [drinkList, tried]);

  // useEffect(() => {
  //   setTriedList(drinkList?.filter((d) => d.tasted === true));
  // }, [drinkList, tried]);

  const toTryList = drinkList?.filter((d) => d.tasted === false);
  const triedList = drinkList?.filter((d) => d.tasted === true);
  console.log("dlist", drinkList);

  // function handlePatch(drink) {
  //   fetch(`/user_wines/${drink.id}`, {
  //     method: "PATCH",
  //     body: JSON.stringify({
  //       favorite: !drink.favorite,
  //       tasted: true,
  //       review: userReview,
  //     }),
  //     headers: {
  //       "Content-type": "application/json",
  //     },
  //   }).then((res) => console.log(res.ok));
  //   return () => {
  //     setUserReview("");
  //   };
  // }

  const toTryListItem = toTryList?.map((d) => (
    <MyListItem
      key={d.id}
      drink={d}

      newPhoto={newPhoto}
      setNewPhoto={setNewPhoto}
      toggleFavorite={toggleFavorite}
    />
  ));
  const triedListItem = triedList?.map((d) => (
    <MyListItem
      key={d.id}
      drink={d}
    
      newPhoto={newPhoto}
      setNewPhoto={setNewPhoto}
      toggleFavorite={toggleFavorite}
    />
  ));

  return (
    <div className="my_list">
      <h1>To Try</h1>
      {toTryListItem}
      <h1>Have Tried</h1>
      {triedListItem}
      <Share />
    </div>
  );
}

export default MyList;
