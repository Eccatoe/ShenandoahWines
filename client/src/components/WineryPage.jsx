import { useEffect, useState } from "react";
import { useParams } from "react-router-dom";
import arrow from '../assets/arrow.svg'

function WineryPage() {
  const [winery, setWinery] = useState([]);
  const [selections, setSelections] = useState([]);
  const { id } = useParams();
  const { name, link, description, image, wines } = winery;

  useEffect(() => {
    fetch(`/wineries/${id}`)
      .then((r) => r.json())
      .then((data) => setWinery(data));
    return () => setWinery({});
  }, []);

  function handleSelect(e) {
    const menuSelections = Array.from(
      e.target.selectedOptions,
      (item) => item.value
    );
    const userSelections = winery.wines.find((wine) =>
     menuSelections.includes(wine.name)
    );


    // const log=(selections.map((s)=>s.wine_id))
    // console.log(log.includes(userSelections.id))
    const log=(selections.map((w)=>w.wine_id))

    if(!log.includes(userSelections.id)){
      setSelections([...selections, { wine_id: userSelections.id }]);
    } else if (log.includes(userSelections.id)){
      const remove=selections.find((s)=>s.wine_id===userSelections.id)
      const removeIndex=(selections.indexOf(remove))

      selections.splice(removeIndex, 1)
    }
console.log(selections)
  }

  function handleAddToMyList(e) {
    e.preventDefault();
    fetch("/user_wines", {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify({ selections }),
    }).then((res) => console.log(res.ok));
  }

  const highlight = (e) => {
    e.target.classList.toggle("sel");
  };

  const wineOptions = wines?.map((wine) => (
    <option onClick={(e) => highlight(e)} className="opt" value={wine.name}>
      {wine.name}
    </option>
  ));

  const nameArr = name?.split(" ");
  const nameDiv = nameArr?.map((n) => <h2 className="winery-name">{n.toUpperCase()}</h2>);
  return (
    <>
      <div style={{ backgroundImage: `url(${image})` }} className="winery-page">
        <div className="winery-page-title">
          <div className="name-div">{nameDiv}</div>
          <a target="_blank" href={link}>
            <img className="winery-page-icon" src={arrow}/>
            
          </a>
        </div>
        <div className="winery-blurb">
        
         <p>{description}</p>
          <form onSubmit={handleAddToMyList}>
            <select multiple={true} onChange={(e) => handleSelect(e)} id="menu">
              {wineOptions}
            </select>
            <br />
            <input type="submit" value="Add to My List"></input>
          </form>
        </div>
      </div>
    </>
  );
}

export default WineryPage;
