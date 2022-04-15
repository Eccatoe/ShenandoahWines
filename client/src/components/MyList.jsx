import React, { useEffect, useState } from "react";
import MyListItem from "./MyListItem";
import Share from "./Share";

function MyList() {
  const [drinkList, setDrinkList] = useState([]);

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

  function toggleTasted(drinkId) {
    const updatedList = drinkList.map((drink) => {
      if (drink.id === drinkId) {
        return { ...drink, tasted: true };
      } else {
        return drink;
      }
    });
    setDrinkList(updatedList);
  }

  const toTryList = drinkList?.filter((d) => d.tasted === false);
  const triedList = drinkList?.filter((d) => d.tasted === true);

  const toTryListItem = toTryList?.map((d) => (
    <MyListItem
      key={d.id}
      drink={d}
      toggleFavorite={toggleFavorite}
      toggleTasted={toggleTasted}
    />
  ));
  const triedListItem = triedList?.map((d) => (
    <MyListItem
      key={d.id}
      drink={d}
      toggleFavorite={toggleFavorite}
      toggleTasted={toggleTasted}
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
