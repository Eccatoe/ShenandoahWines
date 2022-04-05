import {Link} from 'react-router-dom'

function NavBar() {
  return (
    <>
    <Link to="/wineries">Wineries</Link>
    <Link to="/home">Home</Link>
    <Link to="/varietals">Varietals</Link>
    </>
  )
}

export default NavBar