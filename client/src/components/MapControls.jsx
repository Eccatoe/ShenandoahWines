import { useEffect, useState, useCallback } from "react";
import {
  FullscreenControl,
  NavigationControl,
  ScaleControl,
  useMap,
} from "react-map-gl";

function MapControls() {
  const { mymap } = useMap();
  const [inputValue, setInputValue] = useState("");
  const [hasError, setError] = useState(false);

  useEffect(() => {
    if (!mymap) {
      return undefined;
    }

    const onMove = () => {
      const { lng, lat } = mymap.getCenter();
      setInputValue(`${lng.toFixed(3)}, ${lat.toFixed(3)}`);
      setError(false);
    };
    mymap.on("move", onMove);
    onMove();

    return () => {
      mymap.off("move", onMove);
    };
  }, [mymap]);

  const onChange = useCallback((e) => {
    setInputValue(e.target.value);
  }, []);

  const onSubmit = useCallback(() => {
    const [lng, lat] = inputValue.split(",").map(Number);
    if (Math.abs(lng) <= 180 && Math.abs(lat) <= 85) {
      mymap.easeTo({
        center: [lng, lat],
        duration: 1000,
      });
    } else {
      setError(true);
    }
  }, [mymap, inputValue]);
  return (
    <>
      <div
        style={{
          padding: 12,
          fontFamily: "sans-serif",
          position: "absolute",
        }}
      >
        <span>MAP CENTER: </span>
        <input
          type="text"
          value={inputValue}
          onChange={onChange}
          style={{ color: hasError ? "red" : "black" }}
        />
        <button onClick={onSubmit}>GO</button>
      </div>
      <FullscreenControl />
      <NavigationControl />

      <ScaleControl />
    </>
  );
}

export default MapControls;
