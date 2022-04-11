import React, { useContext, useState } from "react";
import { WineryContext } from "./WineryContext";
import heart from "../assets/heart-outline.svg";
import add from "../assets/add-outline.svg";
import star from "../assets/star.svg";

function MyListItem({ drink, handlePatch, setTried, setFavorite, userReview, setUserReview}) {
  const { wineries } = useContext(WineryContext);
  const { wine, review } = drink;
  const [show, setShow] = useState(true);
  const [displayForm, setDisplayForm] = useState(false);
  // const [userReview, setUserReview] = useState([]);


  function moveListItem(drink, e) {
    if (e.currentTarget.value === "fave") {
      setFavorite((favorite) => !favorite);
    } else if (e.currentTarget.value === "move") {
      setTried((tried) => !tried);
    }
    handlePatch(drink, e);
  }

  function handleShowForm(){
    setDisplayForm(displayForm=>!displayForm)
  }
  function handleReview(drink, e) {
    e.preventDefault()
    console.log(29, drink)
    handlePatch(drink, userReview)
    setDisplayForm(false)
    console.log("userReview 34", userReview)
    }

  const listBlock = (
    <div>
      {wine ? (
        <div>
          <p>
            {wine.name}, {wineries.find((w) => w.id === wine.winery_id)?.name}
          </p>
          <p>{review}</p>
          <button value="fave" onClick={(e) => moveListItem(drink, e)}>
            <img className="icon" src={heart} />
          </button>
          <button
            value="move"
            style={{ display: show ? "block" : "none" }}
            onClick={(e) => moveListItem(drink, e)}
          >
            <img className="icon" src={add}></img>
          </button>
          <button onClick={() => handleShowForm()}>
            <img className="icon" src={star} />
          </button>
          <div style={{ display: displayForm ? "block" : "none" }}>
            {/* <ReviewForm handleReview={handleReview} review={review} setReview={setReview}/> */}
            Jot down some Notes!
            <br />
            <form onSubmit={(e)=>handleReview(drink, e)}>
            <input type="textarea"
            value={userReview}
            onChange={(e)=>setUserReview(e.target.value)}

             /><input type="submit"></input>
            </form>
          </div>
        </div>
      ) : null}
    </div>
  );
  return (
    <>
      <div className="page">{listBlock}</div>
    </>
  );
}

export default MyListItem;
