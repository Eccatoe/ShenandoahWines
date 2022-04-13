import React, { useContext, useState } from "react";
import { WineryContext } from "./WineryContext";
import heart from "../assets/heart-outline.svg";
import add from "../assets/add-outline.svg";
import star from "../assets/star.svg";

function MyListItem({
  drink,
  newPhoto,
  setNewPhoto,
  toggleFavorite
}) {
  const { wineries } = useContext(WineryContext);
  const { wine, review } = drink;
  const [show, setShow] = useState(true);
  const [userReview, setUserReview] = useState("");
  const [displayForm, setDisplayForm] = useState(false);

  function moveListItem(e) {
    if(e.currentTarget.value==="fave"){
      toggleFavorite(drink.id)}
      console.log("22 drink", drink)
    handlePatch(e);
  }

  function handleReview(e) {
    e.preventDefault();
    handlePatch(e);
    setDisplayForm(false);
  }

  function handlePatch(e) {
    console.log("patch", e.currentTarget.value==="move")
    fetch(`/user_wines/${drink.id}`, {
      
      method: "PATCH",
 
      body: JSON.stringify({
        favorite: (e.currentTarget.value==="fave"? !drink.favorite : drink.favorite),
        tasted: (e.currentTarget.value==="move"? true : false),
        review: userReview ? userReview : drink.review,
      }),
      headers: {
        "Content-type": "application/json",
      },
    }).then((res) => console.log(res.ok));
    return () => {
      setUserReview("");
    };
  }

  function handleShowForm() {
    setDisplayForm((displayForm) => !displayForm);
  }



  // function handleReview(drink, e) {
  //   e.preventDefault()
  //   handlePatch(drink, userReview)
  //   setDisplayForm(false)
  //   }

  function handleChange(e) {
    if (e.target.name === "review") {
      setUserReview(e.target.value);
    }
    if (e.target.name==="newPhoto"){
      setNewPhoto(e.target.value)}
    // if (e.target.files[0]) {
    //   setNewPhoto(e.target.files[0]);
    // } 
    console.log(newPhoto)
  }
  
  function handleSubmit(drink, e) {
    e.preventDefault();

    if(displayForm){
      let myForm = document.getElementById('myForm');
      let formData = new FormData(myForm);
      handlePatch(drink, formData);
    }

    console.log(64, drink)
  }

  const listBlock = (
    <div>
      {wine ? (
        <div>
          <p>
            {wine.name}, {wineries.find((w) => w.id === wine.winery_id)?.name}
          </p>
          <p>{review}</p>
          <button value="fave" onClick={moveListItem}>
            <img className="icon" src={heart} style={{background: drink.favorite ? "red" : "blue"}}/>
          </button>
          <button
            value="move"
            style={{ display: drink.tasted? "none" : "block" }}
            onClick={(e) => moveListItem(e)}
          >
            <img className="icon" src={add}></img>
          </button>
          <button onClick={() => handleShowForm()}>
            <img className="icon" src={star} />
          </button>

          {/*---------------------------------REVIEW FORM--------------*/}

          <div style={{ display: displayForm ? "block" : "none" }}>
            Jot down some Notes!
            <br />
            <form id="myForm" onSubmit={(e) => handleSubmit(drink, e)}>
              <input
                type="textarea"
                name="review"
                value={userReview}
                onChange={(e) => handleChange(e)}
              />
              <input
                type="file"
                name="newPhoto"
                accept="image/png, image/jpeg"
                onChange={handleChange}
              />
              <input type="submit"></input>
            </form>
         
          </div>

          {/*---------------------------------REVIEW FORM--------------*/}
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
