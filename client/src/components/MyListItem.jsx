import React, { useContext, useState } from "react";
import { WineryContext } from "./WineryContext";
import heart from "../assets/heart-outline.svg";
import add from "../assets/add-outline.svg";
import star from "../assets/star.svg";

function MyListItem({
  drink,
  // handlePatch,
  // setFavorite,
  // userReview,
  // setUserReview,
  newPhoto,
  setNewPhoto,
  toggleFavorite
}) {
  // ({ drink, handlePatch, tried, setTried, setFavorite, userReview, setUserReview}) {
  const { wineries } = useContext(WineryContext);
  const { wine, review } = drink;
  const [show, setShow] = useState(true);
  const [userReview, setUserReview] = useState("");
  const [displayForm, setDisplayForm] = useState(false);
  // const [newPhoto, setNewPhoto] = useState({});

  function moveListItem(e) {
    toggleFavorite(drink.id)
    handlePatch(drink);
  }

  function handleReview(drink, e) {
    e.preventDefault();
    handlePatch(drink, userReview);
    setDisplayForm(false);
  }

  function handlePatch(drink) {
    fetch(`/user_wines/${drink.id}`, {
      method: "PATCH",
      body: JSON.stringify({
        favorite: !drink.favorite,
        tasted: true,
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
    // const formData=new FormData()
    // formData.append("file", newPhoto)
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
            style={{ display: show ? "block" : "none" }}
            onClick={(e) => moveListItem(drink, e)}
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
            {/* <form onSubmit={(e)=>handleReview(drink, e)}>
            <input type="textarea"
            value={userReview}
            onChange={(e)=>setUserReview(e.target.value)}

             />
             <input type="file" name="newPhoto" accept="image/png, image/jpeg" onChange={(e)=>handleImageChange(e)}/>
             <input type="submit"></input>
            </form> */}
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
