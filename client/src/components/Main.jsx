import {useNavigate} from "react-router-dom";

function Main() {
    const navigate=useNavigate()
  return (
    <>
      <h1>Shenandoah Valley Wines</h1>
      <div onClick={navigate('/trails')}>Find Trails</div>
      <div onClick={navigate('/wineries')}>Winery Catalog</div>
      <div onClick={navigate('/varietals')}>Learn about Virginia's Varietals</div>
    </>
  );
}

export default Main;
