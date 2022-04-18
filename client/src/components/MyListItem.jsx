import React, { useContext, useState } from "react";
import { useNavigate } from "react-router-dom";
import { WineryContext } from "./WineryContext";
import heart from "../assets/heart.svg";
import star from "../assets/star.svg";
import add from "../assets/add.svg";
import minus from "../assets/minus.svg";
import expand from "../assets/expand.svg";

function MyListItem({ drink, toggleFavorite, toggleTasted }) {
  const navigate = useNavigate();

  const { wineries } = useContext(WineryContext);
  const { wine} = drink;
  const [userReview, setUserReview] = useState("");
  const [displayForm, setDisplayForm] = useState(false);
  const [displayReview, setDisplayReview] = useState(false);

  function moveListItem(e) {
    if (e.currentTarget.value === "fave") {
      toggleFavorite(drink.id);
    } else if (e.currentTarget.value === "move") {
      toggleTasted(drink.id);
    }
    handlePatch(e);
  }

  function handleShowForm() {
    setDisplayForm((displayForm) => !displayForm);
  }
  function handleExpand(e){
    if (userReview.length>0){
      e.target.classList.toggle("open")
      setDisplayReview(!displayReview)
    }
    
  }

  function handleChange(e) {
    setUserReview(e.target.value);
  }

  function handlePatch(e) {
    e.preventDefault();
    setDisplayForm(false);
    fetch(`/user_wines/${drink.id}`, {
      method: "PATCH",
      body: JSON.stringify({
        favorite:
          e.currentTarget.value === "fave" ? !drink.favorite : drink.favorite,
        tasted: e.currentTarget.value === "move" ? !drink.tasted : drink.tasted,
        review: userReview ? userReview : drink.review,
      }),
      headers: {
        "Content-type": "application/json",
      },
    })
      .then((res) => res.json())
      .then((res) => console.log("RES", res));
  }

  const listBlock = (
    <div>
      {wine ? (
        <div>
          <strong>{wine.name}</strong>
          <p
            onClick={() => {
              navigate(
                `/wineries/${wineries.find((w) => w.id === wine.winery_id).id}`
              );
            }}
          >
            {wineries.find((w) => w.id === wine.winery_id)?.name}
          </p>
          <button onClick={(e)=>handleExpand(e)}>
              <img className="icon expand" src={expand} />
            </button>
            <div style={{ display: displayForm ? "none" : "block" }}>
         <p className="review" style={{display: displayReview? "block":"none"}}>{userReview}</p>
          </div>
          <div className="list-buttons">
           
            <button
              value="move"
              style={{ display: drink.tasted ? "none" : "block" }}
              onClick={(e) => moveListItem(e)}
            >
              <img className="icon" src={add}></img>
            </button>

            <button value="fave" onClick={(e) => moveListItem(e)}>
              <img
                className="icon"
                src={heart}
                style={{ background: drink.favorite ? "red" : "blue" }}
              />
            </button>

            <button onClick={() => handleShowForm()}>
              <img className="icon" src={star} />
            </button>
            <div style={{ display: displayForm ? "block" : "none" }}>
              Jot down some Notes!
              <br />
              <form onSubmit={(e) => handlePatch(e)}>
                <input
                  type="text"
                  name="review"
                  value={userReview}
                  onChange={(e) => handleChange(e)}
                />
                <input type="submit"></input>
              </form>
            </div>

            <button value="trash">
              <img className="icon" src={minus} />
            </button>
          </div>
        </div>
      ) : null}
    </div>
  );
  return (
    <>
      <div className="list-item">{listBlock}</div>
    </>
  );
}

export default MyListItem;
