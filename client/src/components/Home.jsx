import { useNavigate } from "react-router-dom";

function Home() {
  const navigate = useNavigate();

  return (
    <div className="home">
      <h1 className="home-header">
        <span>SHENANDOAH</span>
        <span>VALLEY</span>
        <span>WINES</span>
      </h1>
      <div className="home-links">
        <div
          className="home-link"
          onClick={() => {
            navigate("/trails");
          }}
        >
          FIND TRAILS
        </div>
        <div
          className="home-link"
          onClick={() => {
            navigate("/wineries");
          }}
        >
          WINERY CATALOG{" "}
        </div>
        <div
          className="home-link"
          onClick={() => {
            navigate("/varietals");
          }}
        >
          VARIETALS{" "}
        </div>
      </div>
    </div>
  );
}

export default Home;
