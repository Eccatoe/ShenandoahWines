import { useEffect, useState } from "react";
import { useNavigate } from "react-router-dom";
import VarietalItem from "./VarietalItem.jsx";

function Varietals({ setVarietalSearchList }) {
  const navigate = useNavigate();
  const [selectedVarietal, setSelectedVarietal] = useState({});
  const [varietals, setVarietals] = useState([]);
  const { name, tasting_notes, picture } = selectedVarietal;

  const singleVarietal = varietals
    ?.sort((a, b) => a.name.localeCompare(b.name))
    .map((v) => (
      <VarietalItem
        key={v.id}
        varietal={v}
        varietals={varietals}
        setSelectedVarietal={setSelectedVarietal}
      />
    ))
    .splice(1, varietals.length);

  useEffect(() => {
    fetch("/varietals")
      .then((r) => r.json())
      .then((data) => setVarietals(data));
  }, []);

  function handleFind(e) {
    const match = varietals.find((v) => v.name === e.target.value);
    setVarietalSearchList(match.wineries);
    navigate("/wineries");
  }
  return (
    <>
      <div className="varietal-banner"></div>

      <div className="varietal">
        <div className="varietal-list">
          <h3>Virginia Varietals</h3>

          <div className="varietal-list-items">{singleVarietal}</div>
        </div>
        {selectedVarietal.name ? (
          <div
            style={{ backgroundImage: `url(${picture})` }}
            className="varietal-info"
          >
            <p>
              <h3>{name}</h3>
              <div>{tasting_notes}</div>
              <button value={name} onClick={handleFind}>
                Find Wineries that grow {name}
                <i class="ph-wine"></i>
              </button>
            </p>
          </div>
        ) : (
          <div className="varietal-info">
            <p>
              <h3>Varietal Spotlight: Norton</h3>
              <div>
                The Shenandoah Valley is the largest AVA (American Viticultural
                Area) in Virginia. It covers 2.4 million acres surrounding the
                Shenandoah River in northwest Virginia, bordering the Blue Ridge
                Mountains to the east and the Alleghenies to the west.{" "}
              </div>
              <div>
                Over 60 different varieties of <i>vitis vinifera</i> are
                cultivated in Virginia for wine production. Virginia's most
                popular varietal is the globally popular Chardonnay, followed
                closely by the equally beloved Carbenet Sauvignon, Cabernet
                Franc, and Virginia's official Signature Grape, Viognier.
              </div>
              <div>
                Ask a true Virginia vintner, however, and they'll tell you that
                Norton is the true Virginia grape. It was crossbred and founded
                by Dr. Daniel Norton right in the the state's capital!
              </div>
            </p>
          </div>
        )}
      </div>
    </>
  );
}

export default Varietals;
