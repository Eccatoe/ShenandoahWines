import React, { useEffect, useState } from "react";
import MyListItem from "./MyListItem";
import AppAdapter from "../adapters/AppAdapter";
import stain from "../assets/stain.png";
import Share from "./Share";

function MyList() {
  const [drinkList, setDrinkList] = useState([]);

  useEffect(() => {
    AppAdapter.getUserWines()
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
    <div className="list-body">
            <img src={stain} className="stain"></img>

      <div className="list-body-content">
      <div className="list-body-header">
        <h1>WINE JOURNAL</h1>
        <p>-SOMETHING TO REMEMBER THEM BY-</p>
        <Share />
      </div>
      <div className="list">
        <div className="list-container-1">
          <h1 className="list-header-1">
            <p>WANNA</p>
            <p>DO'S</p>
          </h1>
          <div className="list-content-1">{toTryListItem}</div>
        </div>
        <div className="list-container-2">
          <div className="list-content-2">{triedListItem}</div>
          <h1 className="list-header-2">
            <p>BEEN</p>
            <p>THERE,</p> <p>LOVED</p> <p>THAT</p>
          </h1>
        </div>
      </div>
      </div>
    </div>
  );
}

export default MyList;
