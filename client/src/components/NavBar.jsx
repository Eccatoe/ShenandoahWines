import {Link} from 'react-router-dom'

function NavBar() {
  return (
    <div className="nav">
    <Link to="/wineries">Wineries</Link>
    <Link to="/home">Home</Link>
    <Link to="/varietals">Varietals</Link>
    <Link to="/my_list">My List</Link>
    </div>
  )
}

export default NavBar