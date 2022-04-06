import "./App.css";
import { useEffect, useState } from "react";
import { WineryContext } from "./components/WineryContext";
import { Routes, Route } from "react-router-dom";
import NavBar from "./components/NavBar";
import Home from "./components/Home";
import Catalog from "./components/Catalog";
import WineryPage from "./components/WineryPage";
import Varietals from "./components/Varietals";

function App() {
  const [wineries, setWineries] = useState([]);
  const [varietalSearchList, setVarietalSearchList] = useState([]);
  useEffect(() => {
    fetch("/wineries")
      .then((r) => r.json())
      .then((data) => setWineries(data));
    return () => {
      setWineries({});
    };
  }, []);

  return (
    <div>
      <NavBar />
      <WineryContext.Provider value={{ wineries, setWineries }}>
        <Routes>
          <Route exact path="/home" element={<Home />}></Route>
          <Route
            exact
            path="/wineries"
            element={
              <Catalog
                varietalSearchList={varietalSearchList}
                setVarietalSearchList={setVarietalSearchList}
              />
            }
          ></Route>
          <Route exact path="/wineries/:id" element={<WineryPage />}></Route>
          <Route
            exact
            path="/varietals"
            element={
              <Varietals setVarietalSearchList={setVarietalSearchList} />
            }
          ></Route>
        </Routes>
      </WineryContext.Provider>
    </div>
  );
}

export default App;
