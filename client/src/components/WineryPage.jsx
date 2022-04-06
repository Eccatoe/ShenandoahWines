import { useEffect, useState } from "react";
import { useParams } from "react-router-dom";

function WineryPage() {
  const [winery, setWinery] = useState([]);
  const [selectedWines, setSelectedWines] = useState([]);
  const { id } = useParams();
  const { name, link, description, image, address, wines } = winery;

  useEffect(() => {
    fetch(`/wineries/${id}`)
      .then((r) => r.json())
      .then((data) => setWinery(data));
    return () => setWinery({});
  }, []);

  function handleSelect(e) {
    const menuSelections=Array.from(e.target.selectedOptions, (item)=>item.value)
    const userSelectedWines=winery.wines.filter((wine)=>menuSelections.includes(wine.name))
    console.log(userSelectedWines)
  }

  function handleAddToMyList(e) {
    e.preventDefault();
    console.log("working")
    fetch('/user_wines', {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json'
      },
      body: JSON.stringify(selectedWines)
      
    })
    .then(res=>console.log(res.ok))
  }

  const wineOptions = wines?.map((wine) => (
    <option value={wine.name}>{wine.name}</option>
  ));

  return (
    <>
      <div className="wineryBlurb">
        <h2>{name}</h2>
        <div>{address}</div>
        <a target="_blank" href={link}>
          Go to {name}
        </a>
        <strong>From the winemaker:</strong> {description}
        <img src={image}></img>
        Wine Offerings:
        <form onSubmit={handleAddToMyList}>
          <select
            multiple={true} 
            onChange={(e)=>handleSelect(e)}
            value={selectedWines}
          >
            {wineOptions}
          </select>
          <input type="submit" value="Add to My List"></input>
        </form>
      </div>
    </>
  );
}

export default WineryPage;
