import {useNavigate} from "react-router-dom";

function Home() {
    const navigate=useNavigate()
   
  return (
    <div className="home">
      <h1 className="home-header">Shenandoah Valley Wines</h1>
      <div className="home-links">
      <div className="home-links-1" onClick={()=>{navigate('/trails')}}>Find Trails</div>
      <div className="home-links-2" onClick={()=>{navigate('/wineries')}}>Winery Catalog</div>
      <div className="home-links-3"onClick={()=>{navigate('/varietals')}}>Learn about Virginia's Varietals</div>
      </div>
    </div>
  );
}

export default Home;
