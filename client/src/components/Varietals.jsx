import { useEffect, useState } from "react";
import { useNavigate } from "react-router-dom";
import VarietalItem from "./VarietalItem.jsx";

function Varietals({ setVarietalSearchList }) {
  const navigate = useNavigate();
  const [selectedVarietal, setSelectedVarietal] = useState({});
  const [varietals, setVarietals] = useState([]);
  const {name, tasting_notes, picture } = selectedVarietal;

  const singleVarietal = varietals?.map((v) => (
    <VarietalItem
      key={v.id}
      varietal={v}
      varietals={varietals}
      setSelectedVarietal={setSelectedVarietal}
    />
  ));

  useEffect(() => {
    fetch("/varietals")
      .then((r) => r.json())
      .then((data) => setVarietals(data));
  }, []);

  function handleFind(e) {
    const match = varietals.find((v) => v.name === e.target.value);
    setVarietalSearchList(match.wineries)
    navigate("/wineries");
  }
  return (
    <div className="varietal">
      <div className="varietal-list">{singleVarietal}</div>
      {selectedVarietal.name ? (
        <div className="varietal-info">
          <h4>{name}</h4>
          <img src={picture}></img>
          <div>{tasting_notes}</div>
          <button className="lg-button" value={name} onClick={handleFind}>
            Find Wineries that grow {name}
          </button>
          {/* on Click, filter the wine array being passed to catalog
          only include wineries that have wines that belong to this varietal */}
        </div>
      ) : (
        <div className="varietal-info">
          <h4>Virginia Varietals Spotlight: Norton</h4>
          <p>
            The Shenandoah Valley is the largest AVA (American Viticultural
            Area) in Virginia. It covers 2.4 million acres surrounding the
            Shenandoah River in northwest Virginia, bordering the Blue Ridge
            Mountains to the east and the Alleghenies to the west.{" "}
          </p>
          <p>
            Over 60 different varieties of <i>vitis vinifera</i> are cultivated
            in Virginia for wine production. Virginia's most popular varietal is
            the globally popular Chardonnay, followed closely by the equally
            beloved Carbenet Sauvignon, Cabernet Franc, and Virginia's official
            Signature Grape, Viognier.
          </p>
          <p>
            Ask a true Virginia vintner, however, and they'll tell you that
            Norton is the true Virginia grape. It was crossbred and founded by
            Dr. Daniel Norton right in the the state's capital!
          </p>
          <img></img>
        </div>
      )}
    </div>
  );
}

export default Varietals;
