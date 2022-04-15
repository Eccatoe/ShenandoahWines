import React from "react";
import ReactDOM from "react-dom";
import { BrowserRouter } from "react-router-dom";
import { MapProvider } from "react-map-gl";
import App from "./App";

ReactDOM.render(
  <BrowserRouter>
    <MapProvider>
      <App />
    </MapProvider>
  </BrowserRouter>,
  document.getElementById("root")
);
