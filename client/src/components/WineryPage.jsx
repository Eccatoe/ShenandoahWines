import { useEffect, useState } from "react";
import { useParams } from "react-router-dom";

function WineryPage() {
  const [winery, setWinery] = useState([]);
  const [selections, setSelections] = useState([]);
  const [selectionsList, setSelectionsList] = useState([]);
  const { id } = useParams();
  const { name, link, description, image, address, wines } = winery;

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
    const userSelections = winery.wines.filter((wine) =>
      menuSelections.includes(wine.name)
    );
    userSelections.forEach((s) => {
      setSelections([
        ...selections,
        {
          wine_id: s.id,
        },
      ]);
    });
  }

  useEffect(() => {
    setSelectionsList([selections].flat().filter((s) => s !== undefined));
  }, [selections]);

  function handleAddToMyList(e) {
    e.preventDefault();
    fetch("/user_wines", {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify({selections, user_id: 1}),
    }).then((res) => console.log(res.ok));
  }

  const wineOptions = wines?.map((wine) => (
    <option value={wine.name}>{wine.name}</option>
  ));

  return (
    <>
      <div className="winery-blurb">
        <h2>{name}</h2>
        <div>{address}</div>
        <a target="_blank" href={link}>
          Go to {name}
        </a>
        <br />
        <strong>From the winemaker:</strong> {description}
        <img src={image}></img>
        Wine Offerings:
        <form onSubmit={handleAddToMyList}>
          <select
            multiple={true}
            onChange={(e) => handleSelect(e)}
            // value={selections}
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
