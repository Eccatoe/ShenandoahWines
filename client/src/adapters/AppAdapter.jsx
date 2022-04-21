const AppAdapter = {
  getTrails: () => fetch("/trails").then((res) => res.json()),
  getTrailStops: () => fetch("/trail_stops").then((res) => res.json()),
  getUserWines: () => fetch("/user_wines").then((r) => r.json()),
  getVarietals: () => fetch("/varietals").then((r) => r.json()),
  getWineries: () => fetch("/wineries").then((r) => r.json()),
};

export default AppAdapter;
