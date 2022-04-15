import { Link } from "react-router-dom";

function NavBar() {
  return (
    <div className="nav">
      <div className="nav-bar">
        <Link to="/wineries">WINERIES</Link>
        <Link to="/">HOME</Link>
        <Link to="/varietals">VARIETALS</Link>
        <Link to="/my_list">LIST</Link>
        <Link to='/trails'>TRAILS</Link>
      </div>
    </div>
  );
}

export default NavBar;
