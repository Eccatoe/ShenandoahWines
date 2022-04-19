const AppAdapter={
    getTrails: ()=>fetch('/trails').then(res=>res.json())
}

export default AppAdapter