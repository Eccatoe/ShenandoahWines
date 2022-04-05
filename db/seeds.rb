Winery.destroy_all
Wine.destroy_all

puts "seeding"
images=["https://images.unsplash.com/photo-1560493676-04071c5f467b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8d2luZXJ5fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1572913017567-02f0649bc4fd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8d2luZXJ5fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1504279577054-acfeccf8fc52?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8d2luZXJ5fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1593535388526-a6b8556c5351?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8d2luZXJ5fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60https://images.unsplash.com/photo-1615780324244-29b71ae12f7d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8d2luZXJ5fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1506377247377-2a5b3b417ebb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8d2luZXJ5fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1598306442928-4d90f32c6866?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8d2luZXJ5fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1596991456771-234e380e63bd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8d2luZXJ5fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1583803804313-cf4b9ecd674b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fHdpbmVyeXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1596398267243-3e9b68ea5ad9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTV8fHdpbmVyeXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60",
    "https://images.unsplash.com/photo-1423483641154-5411ec9c0ddf?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fHdpbmVyeXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60",
    "https://images.unsplash.com/photo-1470158499416-75be9aa0c4db?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTl8fHdpbmVyeXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60",
    "https://images.unsplash.com/photo-1573574635896-36753f4e38bf?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fHdpbmVyeXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60",
    "https://images.unsplash.com/photo-1573062337052-54ad1468bb5e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjF8fHdpbmVyeXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1516594915697-87eb3b1c14ea?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjZ8fHdpbmVyeXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1596695346787-be03f89b1cdd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mjl8fHdpbmVyeXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1611575189074-9dfbbceb258a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzF8fHdpbmVyeXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1568213816046-0ee1c42bd559?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzJ8fHdpbmVyeXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1548957538-84e1176070d5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzV8fHdpbmVyeXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1558138818-d44c4dea7a6a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzR8fHdpbmVyeXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1591168890570-479f190aecaf?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDR8fHdpbmVyeXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1594063835597-7806ade59614?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDZ8fHdpbmVyeXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1552712095-7bf5c609a1be?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDV8fHdpbmVyeXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1621148998923-872e8157057a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDl8fHdpbmVyeXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1474722883778-792e7990302f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NjJ8fHdpbmVyeXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1626364700645-13f3cebdadc4?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NzJ8fHdpbmVyeXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1456295198429-05d2315cfebb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nzd8fHdpbmVyeXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
    "https://images.unsplash.com/photo-1561955147-e9083536e573?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTQ2fHx3aW5lcnl8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60"]
 Winery.create(name: "Bluestone Vineyard",
    link: "http://www.bluestonevineyard.com",
    image: images.sample,
    
longitude: -79.00950831588997 ,
latitude: 38.38772928989438, 
varietals: "Vidal Blanc
Chardonnay
Viognier
Traminette
Chambourcin
Petit Manseng
Cabernet Franc
Chambourcin
Merlot
Cabernet Sauvignon
Norton
Moscato Bianco
Petit Verdot" ,
    address: "4828 Spring Creek Road Bridgewater, VA 22812 ",
    description: "Located in the western Shenandoah Valley, Bluestone Vineyard offers impressive views of the mountains and surrounding farm land.  Enjoy the view of our hillside vineyard from our tasting room as you taste our wines and experience a little of the Valley's atmosphere and friendliness.Parties of 8 or more must schedule an appointment for tastings with a deposit of their tasting fee.Dogs on a leash are always welcome at Bluestone Vineyard.  Due to a policy set by the Virginia Department of Agriculture and Consumer Service we cannot allow dogs inside the Tasting Room.  We are sorry for any inconveniences this may cause, but would love for your dog to enjoy the patio and other outdoor areas on the property.",
 )
Winery.create(name: "Barren Ridge Vineyards",
    link: "http://www.barrenridgevineyards.com",
    image: images.sample,
    longitude: -78.95595681774128 ,
    latitude: 38.13382713764447, 
varietals: "Chambourcin
Petit Verdot
Merlot
Apple
Vidal Blanc
Traminette
Sauvignon Blanc
Petit Manseng
Viognier
 Vidal Blanc
Chardonnay
Touriga
Riesling
Cabernet Franc",     
    address: "984 Barren Ridge Road Fishersville, VA 22939 ",
    description: "Located on the Higgs family's former apple orchard, Barren Ridge Vineyards is now home to Augusta County's premier winery. John and Shelby Higgs cleared the overgrown land and planted it with grapevines that now produce fourteen award-winning wines. They also converted their 1890's apple barn into a state-of-the-art winery, preserving the original structure and wood beams. The Tasting Room features carefully handcrafted wines that are available daily for tastings. The winery is open seven days a week for complimentary tours, and the patio is always ready for picnics and sunset-viewing.",
)
Winery.create(name: "Bluemont Vineyard",
    link: "http://BluemontVineyard.com",
    image: images.sample,

longitude: -77.83241213626343 ,
latitude: 39.09643090267176, 
   
varietals: "Sauvignon Blanc
Chardonnay
Viognier
Peach
Vidal Blanc
Chambourcin
Merlot
Cabernet Sauvignon
Syrah
Cabernet Franc
Petit Verdot", 
    address: "18755 Foggy Bottom Road Bluemont, Virginia 20135 ",
    description: "Bluemont Vineyard was conceived in a love affair between agriculture and wine. Established in 2007, This small country winery is a natural extension of Great Country Farms (CSA) across the street. As a small-run winery, an average of 5000 carefully crafted cases of wine are produced each year. Discover a broad spectrum of wines with an emphasis on quality of product as well as skill, enthusiasm and artistry of the team of people creating each unique vintage.The Stable at Bluemont Vineyard is also available for private meetings, events and weddings.",
)
Winery.create(name: "Blue Ridge Vineyard",
    link: "http://www.blueridgevineyard.com",
    image: images.sample,
    longitude: -79.74751890056918,
latitude: 37.63062738870603, 
   
varietals: "Riesling
Gewurztraminer
Traminette
Chambourcin
Cabernet Franc
Pinot Noir
", 
    address: "1027 Shiloh Dr. Eagle Rock, VA 24085 ",
    description: "Located at the head of the Shenandoah Valley with magnificent views in the heart of Blue Ridge Mountain country. Pinot Noir, Riesling, Gewurtztraminer, Cabernet Franc, and Traminette wines are crafted from old growth vines. Enjoy a picnic and walk the mountain trails on the 300-acre farm. Plan your wedding, reunion, or corporate event in our spacious barn.",
)
Winery.create(name: "Brix & Columns Vineyards",
    link: "",
    image: images.sample,

    longitude: -78.6997253447254,
    latitude: 38.36885581464876, 
   
varietals: "Chardonnay
Viognier
Petit Manseng
Viognier
Traminette
Vidal Blanc
Chambourcin
Merlot
Petit Verdot
Cabernet Franc
Petit Verdot
Merlot
Tannat
Cabernet Sauvignon",     
    address: "1501 Dave Berry Road McGaheysville, VA 22840 ",
    description: "Come enjoy our spectacular view while sipping on one of our delicious wines. We are located in the Shenandoah Valley, 20 minutes from Harrisonburg and eight minutes from Massanutten Village.",
)
Winery.create(name: "Cave Ridge Vineyard",
    link: "http://www.caveridge.com",
    image: images.sample,

    longitude: -78.67020488888883,
    latitude: 38.81693623013761, 
   
varietals: "Petit Verdot
Cabernet Franc
Viognier
Traminette
Chambourcin
Cabernet Sauvignon
Chardonnay
Riesling",     
    address: "1476 Conicville Rd Mt. Jackson, VA 22842 ",
    description: "Located in the foothills overlooking the Shenandoah Valley, Cave Ridge Vineyard produces wines only from grapes grown at our vineyard under sustainable farming practices.  Facilities include a beautiful tasting room with large separate event room overlooking an expansive cobblestone courtyard with water fountain.  A full service kitchen allows for food preparation for private parties and weddings.",
)
Winery.create(name: "Cedar Creek Winery",
    link: "http://www.cedarcreekvineyard.com",
    image: images.sample,
    longitude: -78.48308883121399,
    latitude: 39.00614229704264, 

varietals: "Chardonnay
Cabernet Franc",     
    address: "7384 Zepp Road Star Tannery, VA 22654 ",
    description: "Cedar Creek Winery LLC is a unique, small family owned farm winery and vineyard located in the mountains of the Northern Shenandoah Valley, with spectacular vistas along the banks of historic Cedar Creek in Shenandoah County. Cedar Creek specializes in the production of award-winning Estate bottled Cabernet Franc and Chardonnay and is not an entertainment venue.",
)
Winery.create(name: "CrossKeys Vineyards",
    link: "http://www.crosskeysvineyards.com",
    image: images.sample,
    longitude: -78.85098130239652,
    latitude: 38.322971306728675, 
varietals: "Touriga
Viognier
Cabernet Franc
Traminette
Vidal Blanc
Chambourcin
Riesling
Chardonnay
Pinot Noir
Apple
Peach",     
    address: "6011 East Timber Ridge Road Mt. Crawford, VA 22841 ",
    description: "From the first plantings in 2002 to the opening of the state of the art facility in May of 2008, CrossKeys seeks to welcome guests to discover, taste and experience the best in estate grown wines.  Situated in the heart of the Shenandoah, only minutes from I-81, Massanutten Resort and downtown Harrisonburg, the winery provides panoramic views of vineyards and the surrounding mountains.  Open daily for tasting and tours, the facility houses the tasting room, winery and four distinct function rooms that are suitable for small and large groups.  The spacious courtyard and front terraces provides space to sit and relax while enjoying our Estate Wines.  A comprehensive program in wine education and the arts is a key component of the winery mission. Join us for lunch prepared by our Executive Chef daily from 11 am to 4:30 pm (Nov-Mar)",
)
Winery.create(name: "Glen Manor Vineyards",
    link: "http://www.glenmanorvineyards.com",
    image: images.sample,
   
longitude: -78.22913631587828,
latitude: 38.840224786386315, 
varietals: "Sauvignon Blanc
Cabernet Franc
Petit Manseng
Petit Verdot", 
    address: "2244 Browntown Road Front Royal, Virginia 22630 ",
    description: "Wines with a sense of place from Virginia's Northwestern Blue Ridge Mountains.  Our interest is in estate grown Sauvignon Blanc, Petit Manseng and red Bordeaux blends and varietals.Tasting fee range $4 to $10 per person depending on the number of wines being offered.We are unable to accommodate limousines, buses or groups larger than six.  This six person group size limit includes minors and non-tasters.We do not provide any foods but you are welcome to enjoy your own food from home, here with our wines.",
)
Winery.create(name: "James Charles Winery & Vineyard",
    link: "http://jamescharleswine.com",
    image: images.sample,
    
longitude: -78.23071314655078,
latitude: 39.125878355285714, 
varietals: "Cabernet Sauvignon
Seyval Blanc
Petit Manseng
Riesling", 
    address: "4063 Middle Rd Winchester, VA 22602 ",
    description: "Founded in 2015, James Charles Winery is the embodiment of the Bogaty's family story. We make old-world style wines in the heart of Virginia's Shenandoah Valley AVA, which strongly resembles classic winemaking regions in France. Our wines are bold, full-bodied and complex.James Charles Winery & Vineyard is the northern Shenandoah Valley's premier winery, vineyard and wedding venue - located just outside of Winchester, Virginia, it's easily accessible from Interstate 81, US Route 11, Interstate 66, US Route 522, US Route 15, US Route 17, VA Route 7, Northern Virginia and Washington, DC, yet a world away in the rolling hills of the Valley's apple country.Founded in 2015 by the Bogaty family (of Veramar Vineyard acclaim), winemaker Justin Bogaty makes Old-World-style wines like Viognier, Riesling, Chardonnay, Fumé Blanc, Merlot, Petit Verdot, Port-style white dessert wine and Bordeaux-style blends, as well as wines inspired by New World winemaking, like Syrah and Zinfandel.James Charles Winery & Vineyard strives to provide big-city chic with a side of Valley charm, all within the beautiful setting of the vineyard grounds, apple orchards and rolling hills as far as the eye can see. Whether your coming to taste our hand-crafted wine or hosting an elegant winery wedding, this winery and event venue is a class above.",
)
Winery.create(name: "Jump Mountain Vineyard",
    link: "http://www.jumpwines.com",
    image: images.sample,
   

    longitude: -79.38716184473647 ,
    latitude: 37.93559673589506, 
varietals: "Cabernet Sauvignon
Syrah
Grüner Veltliner
Cabernet Franc",     
    address: "1493 Walkers Creek Rd Rockbridge Baths, VA 24473 ",
    description: "Jump Mountain Vineyard is a family-owned farm winery. Our goal is to produce carefully crafted, European-style wines with a distinctly local character from grapes grown and processed on the property. Protected by the sandstone knob of Jump Mountain, a local geographic landmark, the vineyard lies on the sunny hillsides of Walkers Creek Valley west of historic Lexington, Virginia.    The mesoclimate of this site provides conditions conducive to growing vinifera grape varieties. Bring a picnic and enjoy spectacular views of Jump Mountain!",
)
Winery.create(name: "Lexington Valley Vineyard",
    link: "http://lexingtonvalleyvineyard.com",
    image: images.sample,
   
longitude: -79.41722618337829 ,
latitude: 37.865731497318016, 
varietals: "Grüner Veltliner
Vidal Blanc
Traminette
Cabernet Franc
Norton", 
    address: "80 Norton Way Rockbridge Baths, Virginia 24473 ",
    description: "A family owned Virginia farm winery located about 15 minutes from Lexington in a beautiful setting nestled in the Shenandoah Valley. The winery features small vintage hand crafted wines.  Outside deck and snack baskets available during May - October.",
)
Winery.create(name: "Marceline Vineyards",
    link: "www.Marcelinevineyards.com",
   
    image: images.sample,
    longitude: -78.82635036006528 ,
    latitude: 38.371588319738, 
varietals: "Chardonnay
Vidal Blanc
Viognier
Merlot
Chambourcin
Cabernet Sauvignon
Cabernet Franc
Traminette",     
    address: "1588 Cross Keys Rd Mt. Crawford, VA 22841 ",
    description: "",
)
Winery.create(name: "Muse Vineyards",
    link: "http://www.musevineyards.com",
    image: images.sample,
   
longitude: -78.50264221587783 ,
latitude: 38.857005583136804, 
varietals: "Petit Verdot
Grenache
Mourvedre
Cabernet Franc
Gamay
Roussanne
Muscat Blanc a Petit Grains
Chardonnay", 
    address: "16 Serendipity Lane Woodstock, VA 22664 ",
    description: "Muse Vineyards, founded in 2005, in the historic and scenic Shenandoah Valley produces estate wines with all grapes grown on site from the highest quality French certified clones. We are producing a bordeaux-style blend of cabernet sauvignon, cabernet franc, merlot, malbec and petit verdot as well as single varietals. We also have chardonnay and red and white Rhone style wines such as viognier, marsanne, roussanne, grenache and syrah. In 2015, we won the Governor's Award for our 2009 Clio. The vineyard site has been continuously farmed since 1792 and the historic house dates from the same year.",
)
Winery.create(name: "North Mountain Vineyard & Winery",
    link: "http://www.northmountainvineyard.com",
    image: images.sample,
   
longitude: -78.47892432937049,
latitude: 38.949313775903335, 
varietals: "Vidal Blanc
Grüner Veltliner
Chardonnay
Riesling
Zweigelt
Cabernet Franc
Carbernet Sauvignon
Petit Verdot
Traminette
Vidal Blanc
Riseling
Apple
Chambourcin", 
    address: "4374 Swartz Road Maurertown, Virginia 22644 ",
    description: "North Mountain VineyardDiscover award winning wines, exceptional mountain views, and storybook setting in the Shenandoah Valley of Virginia! Experience elegant wines exclusive to our vineyard's terroir. Tastings, cellar tours, special events.",
)
Winery.create(name: "Ox Eye Vineyards",
    link: "http://www.OxEyeVineyards.com",
    image: images.sample,
   
longitude: -79.07409121958592,
latitude: 38.14717971606676, 
varietals: "Traminette
Chardonnay
Riesling
Grüner Veltliner
Pinot Noir
Cabernet Franc", 
    address: "44 Middlebrook Avenue Staunton, VA 24401 ",
    description: "Ox-Eye Vineyards was the first vinifera vineyard in Augusta County.  We began planting vines in 1999 and have sold grapes to numerous wineries in Virginia since that time.  In 2010 we built our own winery.  In 2011 we opened our tasting room is in a restored historic building in the wharf district in downtown Staunton.   Come enjoy a glass of 100% estate grown wine on our outdoor covered patio or upstairs in our art gallery featuring a new Virginia artist every 90 days.",
)
Winery.create(name: "Rockbridge Vineyard",
    link: "http://www.rockbridgevineyard.com",
    image: images.sample,
   
longitude: -79.24127481590128 ,
latitude: 37.94223864623973, 
varietals: "Merlot
Viognier
Riesling
Pinot Noir
Traminette
Chambourcin
Merlot
Cabernet Franc
Syrah
Chardonnay", 
    address: "35 Hill View Lane Raphine, VA 24472 ",
    description: "Nestled in the historic Valley of Virginia between the Blue Ridge and Allegheny Mountains, Rockbridge Vineyard produces a wide range of award winning wines. Groups of ten or more we request reservations.",
)
Winery.create(name: "Shenandoah Vineyards",
    link: "http://www.ShenandoahVineyardsVA.com",
    image: images.sample,
   
longitude: -78.5590626644268,
latitude: 38.84896950594859, 
varietals: "Riesling
Chambourcin
Petit Manseng
Cabernet Sauvignon
Chardonnay
Pinot Gris
", 
    address: "3659 S. Ox Rd. Edinburg, VA 22824 ",
    description: "Shenandoah Vineyards, founded in 1976, is Shenandoah Valley's oldest winery and is also the second oldest winery in Virginia. Award-winning wines made in the European tradition using modern techniques and. We have a wine for every palate and every occasion. The winery is in an old Civil War era barn. Come experience the tours and tastings of our wines, enjoy a picnic on the decks overlooking the vineyard and the beautiful Massanutten mountains, and shop in our unique wine-related gift shop.",
)
Winery.create(name: "Twin Oaks Tavern Winery",
    link: "http://www.twinoakstavernwinery.com",
    image: images.sample,
   
longitude: -77.84499076004599,
latitude: 39.12121846905115, 
varietals: "Petit Manseng
Chardonnay
Vidal Blanc
Cabernet Sauvignon
", 
    address: "18035 Raven Rocks Rd Bluemont, Virginia 20135 ",
    description: "'Top of the mountain to you!' In the early 1900's, Twin Oaks Tavern served as country inn where city people could relax in the cool breezes of the Blue Ridge Mountains. Today our winery and vineyard, located at 1150' altitude in the Bear's Den Historic District, offer breathtaking views and wines to match. Visit our beautiful tasting room and decks and enjoy views of the Shenandoah Valley and spectacular sunsets.Arrange for a tour of our vineyard and wine cellar. Kids and dogs are welcome. Visit www.twinoakstavernwinery.com for weekly and monthly Special Events and and check out Twin Oak Tavern's wine blog.",
)
Winery.create(name: "Valerie Hill Vineyard & Winery",
    link: "http://www.valeriehillwinery.com",
    image: images.sample,
   
longitude: -78.27364314470674,
latitude: 39.09037141461424, 
varietals: "Seyval Blanc
Vidal Blanc
Chardonnay
Merlot
Petit Verdot
Norton
Cabernet Franc", 
    address: "1687 Marlboro Road Stephens City, VA 22655 ",
    description: "Valerie Hill Vineyard & Winery is a family owned and operated farm winery born from our commitment to preserve the rural beauty of the Commonwealth, our desire to build a legacy for future generations of our family, and our passion for Virginia wine.  Located just south of Winchester near Stephens City, Virginia, our 18 acre farm is steeped in history.  The focus of our winery is our Tasting House, a Federal style brick manor house dating back to 1807 and the varietalsake of our business - Valerie Hill.Valerie Hill was built in 1807 by Revolutionary War Captain Peter Rust.  She has been caringly restored and serves as the public centerpiece of the winery.  Many of her rooms are open to the public to enjoy wine tastings and light fare, surrounded by original heart pine floors and horsehair plaster walls.  One visit, and we're sure you will love Valerie Hill's quaint beauty just as much as we do.",
)
Winery.create(name: "Veramar Vineyard ",
    link: "http://veramar.com",
    image: images.sample,
   
longitude: -77.91466831771595,
latitude: 39.118166982259694, 
varietals: "Cabernet Franc
Cabernet Sauvignon
Merlot
Malbec
Seyval Blanc
Chardonnay
Riesling
", 
    address: "905 Quarry Road Berryville, VA 22611 ",
    description: "Founded in 2000, Veramar Vineyard was one of the first successful wineries in the northern Shenandoah Valley. The vineyard is run by James and Della Bogaty, who were original members of the Shenandoah Valley Wine Trail. Justin, their son, is the winemaker. He is a graduate of VMI and has a certificate of oenology from UC Davis. Our wine is internationally-acclaimed, and is made at the foothills of the Blue Ridge Mountains.Veramar Vineyard is located of Rt 7 in the northern Shenandoah Valley AVA of Virginia. Right over the Blue Ridge Mountains from Loudoun County, Veramar is a short drive from Leesburg or Winchester, and easily accessible from Washington, DC, Northern Virginia, Frederick, MD, Harpers Ferry, WV, and the Interstate 81 corridor.This hidden gem, nestled in the rolling hills near the Shenandoah River, has an expansive views of the mountains from the 28 acres of vineyards and the rustic yet elegant tasting room and terrace. In this idyllic setting we grow Cabernet Franc, Chardonnay, Seyval Blanc, Traminette, Norton, Albariño, Vidal Blanc and Malbec wine grapes, and make Virginian wine across a spectrum of varietals and blends. Each wine distinctively expresses our dedication to premium Virginia winemaking.The Bogaty family founded Veramar in 2000, when there were very few wineries operating successfully in this part of the state. Since then, the business has grown to include their son, Justin Bogaty, as winemaker, and there has certainly been a tremendous boom in the Virginian wine industry since then, especially in Loudoun County. But over the years we have never lost our values of family and sustainability - every aspect of Veramar, from the vineyard to the winemaking itself, is managed with the goal of creating a family business that can be passed down to many generations of Bogatys to come. We strive to be grounded enough to forego trends and fads in favor of the lasting principles that will sustain Veramar and Shenandoah Valley winemaking culture many years into the future.Our tasting room is open year-round, seven days a week, and opens daily at noon. The estate and vineyards are also the perfect setting for an elegant winery wedding or private party, a venue perfectly situated near Northern Virginia, Winchester, VA, and Washington, DC. We hope you'll visit us, and experience everything that premium Virginian wine has to offer!",
)
Winery.create(name: "Winery at Kindred Pointe",
    link: "http://www.kindredpointe.com",
    image: images.sample,
   
longitude: -78.65195017539435,
latitude: 38.796891100188766, 
varietals: "Apple
Petit Verdot
Seyval Blanc
Petit Manseng
Malbec
Merlot
Vidal Blanc
Chardonnay
Chambourcin", 
    address: "3575 Conicville Road Mount Jackson, VA 22842 ",
    description: "The Winery at Kindred Pointe is located on 58 acres in Shenandoah County, 5 miles west of Mount Jackson, Virginia. Panoramic views and rolling pastures surround the tasting room which is located in a renovated horse barn. Kindred Pointe is a perfect place to enjoy a peaceful, beautiful setting while sipping a glass of wine with friends and family. We are conveniently located 5 miles west of I-81 with great logistics: good roads and driveway, convenient parking, handicap accessible.",
)
Winery.create(name: "Wisteria Farm & Vineyard",
    link: "http://wisteriavineyard.com/",
    image: images.sample,
   
longitude: -78.47373826006016,
latitude: 38.574299248125755,
varietals: "Pinot Gris
Chardonnay
Viognier
Traminette
Seyval
Vidal
Petit Verdot
Carmine
Norton", 
    address: "1126 Marksville Rd. Stanley, Virginia 22851 ",
    description: "We are located in the Shenandoah Valley in Page county, known for its rural character and scenic beauty, between the towns of Luray and Stanley.  Our small farm winery is nestled on the western slope of the Blue Ridge mountains.  All of our wine is crafted from 100% estate-grown grapes.  This is a working farm and vineyard; we also have a flock of natural-colored Romney sheep as well as free-roaming chickens.We invite you to come out and enjoy a day in the country.  Bring a picnic and wander around the farm and vineyard or just sit on our deck, enjoying the wine and the surroundings.In addition to our wines, we also have wool products for sale from our flock including yarn and blankets.Groups of 8 or more, please call ahead to help make it a more enjoyable experience for all!  As a farm, we ask that you please leave your pet at home when you come to visit us - we're happy to share our dog with you while you are our guest!",
)
Winery.create(name: "Wolf Gap Vineyard & Winery",
    link: "http://www.wolfgapvineyard.com",
    image: images.sample,
   
longitude: -78.63236064471361,
latitude: 38.82754416653014, 
varietals: "Chambourcin
Cabernet Franc
Viognier
Traminette
Chardonnay
Blueberry
", 
    address: "123 Stout Road Edinburg, Virginia 22824 ",
    description: "The folks at Wolf Gap Vineyard are dedicated to producing perfect grapes, hand nurtured to produce the best quality wine possible year in and year out.  We have chosen to make small batches of wine in order to provide the care and attention needed to produce truly superior wines rarely found in larger mass production wineries.  For a video tour of the vineyard go to our website www.wolfgapvineyard.com",
)

varietals=[
    "Chardonnay",
    "Petit Manseng",
    "Blend",
    "Traminette",
    "Vidal Blanc",
    "Viognier",
    "Chambourcin",
    "Cabernet Franc",
    "Cabernet Sauvignon",
    "Merlot",
    "Norton",
    "Gewurztraminer",
    "Syrah",
    "Petit Verdot",
    "Riesling"
    ]
puts "seeded"


# Wine.create(
# name: "2015 Chardonnay",
# winery_id: Winery.find_by(name: "Bluestone Vineyard").id, 
# varietal: "Chardonnay"
# )
# Wine.create(
# name: "2017 Stainless Steel Chardonnay",
# winery_id: Winery.find_by(name: "Bluestone Vineyard").id, 
# varietal: "Chardonnay"
# )
# Wine.create(
# name: "2016 Petit Manseng",
# winery_id: Winery.find_by(name: "Bluestone Vineyard").id, 
# varietal: "Petit Manseng"
# )
# Wine.create(
# name: "2014 Estate Grown Blue Ice",
# winery_id: Winery.find_by(name: "Bluestone Vineyard").id, 
# varietal: "Traminette"
# )
# Wine.create(
# name: "2017 Traminette",
# winery_id: Winery.find_by(name: "Bluestone Vineyard").id, 
# varietal: "Traminette"
# )
# Wine.create(
# name: "2016 Estate Grown Vidal Blanc",
# winery_id: Winery.find_by(name: "Bluestone Vineyard").id, 
# varietal: "Vidal Blanc"
# )
# Wine.create(
# name: "2015 Viognier",
# winery_id: Winery.find_by(name: "Bluestone Vineyard").id, 
# varietal: "Viognier"
# )
# Wine.create(
# name: "Beau",
# winery_id: Winery.find_by(name: "Bluestone Vineyard").id, 
# varietal: "Blend"
# )
# Wine.create(
# name: "2017 Rosé",
# winery_id: Winery.find_by(name: "Bluestone Vineyard").id, 
# varietal: "Chambourcin"
# )
# Wine.create(
# name: "2014 Cabernet Franc",
# winery_id: Winery.find_by(name: "Bluestone Vineyard").id, 
# varietal: "Cabernet Franc"
# )
# Wine.create(
# name: "2014 Cabernet Sauvignon",
# winery_id: Winery.find_by(name: "Bluestone Vineyard").id, 
# varietal: "Cabernet Sauvignon"
# )
# Wine.create(
# name: "2015 The Steep Face",
# winery_id: Winery.find_by(name: "Bluestone Vineyard").id, 
# varietal: "Chambourcin"
# )
# Wine.create(
# name: "2014 Merlot",
# winery_id: Winery.find_by(name: "Bluestone Vineyard").id, 
# varietal: "Merlot"
# )
# Wine.create(
# name: "2014 Dry Dock",
# winery_id: Winery.find_by(name: "Bluestone Vineyard").id, 
# varietal: "Norton"
# )
# Wine.create(
# name: "2014 Petit Verdot",
# winery_id: Winery.find_by(name: "Bluestone Vineyard").id, 
# varietal: "Petit Verdot"
# )
# Wine.create(
# name: "Crooked and Weedy",
# winery_id: Winery.find_by(name: "Bluestone Vineyard").id, 
# varietal: "Blend"
# )
# Wine.create(
# name: "2013 Houndstooth",
# winery_id: Winery.find_by(name: "Bluestone Vineyard").id, 
# varietal: "Blend"
# )
# Wine.create(
# name: "2014 Cadenza",
# winery_id: Winery.find_by(name: "Bluestone Vineyard").id, 
# varietal: "Blend"
# )
# Wine.create(
# name: "2017 Moscato",
# winery_id: Winery.find_by(name: "Bluestone Vineyard").id, 
# varietal: "Moscato"
# )
# Wine.create(
# name: "612 Vineyard Chardonnay",
# winery_id: Winery.find_by(name: "612 Vineyard").id, 
# varietal: "Chardonnay"
# )
# Wine.create(
# name: "612 Vineyard Riesling",
# winery_id: Winery.find_by(name: "612 Vineyard").id, 
# varietal: "Riesling"
# )
# Wine.create(
# name: "612 Vineyard Traminette",
# winery_id: Winery.find_by(name: "612 Vineyard").id, 
# varietal: "Traminette"
# )
# Wine.create(
# name: "612 Vineyard Viognier",
# winery_id: Winery.find_by(name: "612 Vineyard").id, 
# varietal: "Viognier"
# )
# Wine.create(
# name: "612 Vineyard Viognier - Barrel Aged",
# winery_id: Winery.find_by(name: "612 Vineyard").id, 
# varietal: "Viognier"
# )
# Wine.create(
# name: "My Sweet White Dessert Wine",
# winery_id: Winery.find_by(name: "612 Vineyard").id, 
# varietal: "Viognier"
# )
# Wine.create(
# name: "Blushing Rose",
# winery_id: Winery.find_by(name: "612 Vineyard").id, 
# varietal: "Blend"
# )
# Wine.create(
# name: "My Sweet Rouge",
# winery_id: Winery.find_by(name: "612 Vineyard").id, 
# varietal: "Blend"
# )
# Wine.create(
# name: "612 Vineyard Cabernet Franc",
# winery_id: Winery.find_by(name: "612 Vineyard").id, 
# varietal: "Cabernet Franc"
# )
# Wine.create(
# name: "612 Vineyard Chambourcin",
# winery_id: Winery.find_by(name: "612 Vineyard").id, 
# varietal: "Chambourcin"
# )
# Wine.create(
# name: "Always N Forever",
# winery_id: Winery.find_by(name: "612 Vineyard").id, 
# varietal: "Blend"
# )
# Wine.create(
# name: "Sultry N Red",
# winery_id: Winery.find_by(name: "612 Vineyard").id, 
# varietal: "Blend"
# )
# Wine.create(
# name: "2016 Chardonnay",
# winery_id: Winery.find_by(name: "Barren Ridge Vineyards").id, 
# varietal: "Chardonnay"
# )
# Wine.create(
# name: "2016 Traminette",
# winery_id: Winery.find_by(name: "Barren Ridge Vineyards").id, 
# varietal: "Traminette"
# )
# Wine.create(
# name: "2016 Vidal Blanc",
# winery_id: Winery.find_by(name: "Barren Ridge Vineyards").id, 
# varietal: "Vidal Blanc"
# )
# Wine.create(
# name: "2016 Viognier",
# winery_id: Winery.find_by(name: "Barren Ridge Vineyards").id, 
# varietal: "Viognier"
# )
# Wine.create(
# name: "2015 Tinkling Spring",
# winery_id: Winery.find_by(name: "Barren Ridge Vineyards").id
# varietal: "Blend"
# )
# Wine.create(
# name: "2016 Harmony",
# winery_id: Winery.find_by(name: "Barren Ridge Vineyards").id
# varietal: "Blend"
# )
# Wine.create(
# name: "2016 Rosé",
# winery_id: Winery.find_by(name: "Barren Ridge Vineyards").id
# varietal: "Blend"
# )
# Wine.create(
# name: "2016 Cabernet Franc",
# winery_id: Winery.find_by(name: "Barren Ridge Vineyards").id
# varietal: "Cabernet Franc"
# )
# Wine.create(
# name: "2010 Meritage",
# winery_id: Winery.find_by(name: "Barren Ridge Vineyards").id
# varietal: "Blend"
# )
# Wine.create(
# name: "2015 Merlot",
# winery_id: Winery.find_by(name: "Barren Ridge Vineyards").id
# varietal: "Merlot"
# )
# Wine.create(
# name: "2015 Petit Verdot",
# winery_id: Winery.find_by(name: "Barren Ridge Vineyards").id
# varietal: "Petit Verdot"
# )
# Wine.create(
# name: "2015 Red Barren",
# winery_id: Winery.find_by(name: "Barren Ridge Vineyards").id
# varietal: "Blend"
# )
# Wine.create(
# name: "2016 Touriga",
# winery_id: Winery.find_by(name: "Barren Ridge Vineyards").id
# varietal: "Touriga Nacional"
# )
# Wine.create(
# name: "2015 Christof",
# winery_id: Winery.find_by(name: "Barren Ridge Vineyards").id
# varietal: "Blend"
# )

# Wine.create(
# name: "2014 Petit Manseng",
# winery_id: Winery.find_by(name: "Bluemont Vineyard").id
# varietal: "Petit Manseng"
# )
# Wine.create(
# name: "2014 951 Estate Petit Manseng, 'The Chicken'",
# winery_id: Winery.find_by(name: "Bluemont Vineyard").id
# varietal: "Petit Manseng"
# )
# Wine.create(
# name: "2014 2014 Vidal Blanc, 'The Cow'",
# winery_id: Winery.find_by(name: "Bluemont Vineyard").id
# varietal: "Vidal Blanc"
# )
# Wine.create(
# name: "2014 2014 Viognier,  'The Goat'",
# winery_id: Winery.find_by(name: "Bluemont Vineyard").id
# varietal: "Viognier"
# )
# Wine.create(
# name: "2014 Farm Table White",
# winery_id: Winery.find_by(name: "Bluemont Vineyard").id
# varietal: "Blend"
# )
# Wine.create(
# name: "2014 The Donkey",
# winery_id: Winery.find_by(name: "Bluemont Vineyard").id
# varietal: "Chambourcin"
# )
# Wine.create(
# name: "2010 Cabernet Franc, 'The Horse'",
# winery_id: Winery.find_by(name: "Bluemont Vineyard").id
# varietal: "Cabernet Franc"
# )
# Wine.create(
# name: "2012 Meritage 2012 (S-VGC)",
# winery_id: Winery.find_by(name: "Bluemont Vineyard").id
# varietal: "Blend"
# )
# Wine.create(
# name: "2013 2013 Merlot, 'The Ram'",
# winery_id: Winery.find_by(name: "Bluemont Vineyard").id
# varietal: "Merlot"
# )
# Wine.create(
# name: "2012 951 Estate Merlot,  'The Ram'",
# winery_id: Winery.find_by(name: "Bluemont Vineyard").id
# varietal: "Merlot"
# )
# Wine.create(
# name: "2010 Merlot 'The Ram' Reserve",
# winery_id: Winery.find_by(name: "Bluemont Vineyard").id
# varietal: ""
# )
# Wine.create(
# name: "2013 Norton, 'The Pig'",
# winery_id: Winery.find_by(name: "Bluemont Vineyard").id
# varietal: "Norton"
# )
# Wine.create(
# name: "Norton 'The Pig' non-vintage 2011-2012",
# winery_id: Winery.find_by(name: "Bluemont Vineyard").id
# varietal: "Norton"
# )
# Wine.create(
# name: "2013 Farm Table Red",
# winery_id: Winery.find_by(name: "Bluemont Vineyard").id
# varietal: "Blend"
# )
# Wine.create(
# name: "Fortified Norton Port",
# winery_id: Winery.find_by(name: "Bluemont Vineyard").id
# varietal: "Norton"
# )
# Wine.create(
# name: "2014 The Peach",
# winery_id: Winery.find_by(name: "Bluemont Vineyard").id, 
# varietal: ""
# )
# Wine.create(
# name: "Gewurztraminer",
# winery_id: Winery.find_by(name: "Blue Ridge Vineyard").id, 
# varietal: "Gewurztraminer"
# )
# Wine.create(
# name: "Riesling",
# winery_id: Winery.find_by(name: "Blue Ridge Vineyard").id, 
# varietal: "Riesling"
# )
# Wine.create(
# name: "Traminette",
# winery_id: Winery.find_by(name: "Blue Ridge Vineyard").id, 
# varietal: "Traminette"
# )

# Wine.create(
# name: "Cabernet Franc",
# winery_id: Winery.find_by(name: "Blue Ridge Vineyard").id, 
# varietal: "Cabernet Franc"
# )
# Wine.create(
# name: "Pinot Noir",
# winery_id: Winery.find_by(name: "Blue Ridge Vineyard").id, 
# varietal: "Pinot Noir"
# )
# Wine.create(
#     winery_id: Winery.find_by(name:"Brix & Columns Vineyards").id
# name: "2013 Chardonnay",
# varietal: "Chardonnay"
# )
# Wine.create(
#     winery_id: Winery.find_by(name:"Brix & Columns Vineyards").id
# name: "2016 Viognier",
# varietal: "Viognier"
# )
# Wine.create(
#     winery_id: Winery.find_by(name:"Brix & Columns Vineyards").id
# name: "2014 Rosé",
# varietal: "Rosé"
# )
# Wine.create(
#     winery_id: Winery.find_by(name:"Brix & Columns Vineyards").id
# name: "2015 Cabernet Franc",
# varietal: "Cabernet Franc"
# )
# Wine.create(
#     winery_id: Winery.find_by(name:"Brix & Columns Vineyards").id
# name: "2015 Petit Verdot",
# varietal: "Petit Verdot"
# )
# Wine.create(
#     winery_id: Winery.find_by(name:"Brix & Columns Vineyards").id
# name: "2015 McGahey Reserve Red",
# varietal: "Blend"
# )
# Wine.create(
# name: "Chardonnay",
# varietal: "Chardonnay"
# winery_id: Winery.find_by(name:"Cave Ridge Vineyard").id
# )
# Wine.create(
# name: "2011 Riesling",
# varietal: "Riesling"
# winery_id: Winery.find_by(name:"Cave Ridge Vineyard").id
# )
# Wine.create(
# name: "2011 Traminette",
# varietal: "Traminette"
# winery_id: Winery.find_by(name:"Cave Ridge Vineyard").id
# )
# Wine.create(
# name: "2010 Viognier",
# varietal: "Viognier"
# winery_id: Winery.find_by(name:"Cave Ridge Vineyard").id
# )
# Wine.create(
# name: "2011 Fandango Blanco",
# varietal: "Chambourcin"
# winery_id: Winery.find_by(name:"Cave Ridge Vineyard").id
# )
# Wine.create(
# name: "2009 Cabernet Franc",
# varietal: "Cabernet Franc"
# winery_id: Winery.find_by(name:"Cave Ridge Vineyard").id
# )
# Wine.create(
# name: "2009 Chambourcin",
# varietal: "Chambourcin"
# winery_id: Winery.find_by(name:"Cave Ridge Vineyard").id
# )
# Wine.create(
# name: "2009 Fossil Hill Reserve",
# varietal: "Blend"
# winery_id: Winery.find_by(name:"Cave Ridge Vineyard").id
# )
# Wine.create(
# name: "2010 Syrah",
# varietal: "Syrah"
# winery_id: Winery.find_by(name:"Cave Ridge Vineyard").id
# )
# Wine.create(
# name: "2012 Chardonnay",
# varietal: "Chardonnay",
# winery_id: Winery.find_by(name: "Cedar Creek Winery").id
# )
# Wine.create(
# name: "2011 Chardonnay",
# varietal: "Chardonnay",
# winery_id: Winery.find_by(name: "Cedar Creek Winery").id
# )
# Wine.create(
# name: "2012 Cabernet Franc",
# varietal: "Cabernet Franc",
# winery_id: Winery.find_by(name: "Cedar Creek Winery").id
# )
# Wine.create(
# name: "2011 Cabernet Franc",
# varietal: "Cabernet Franc",
# winery_id: Winery.find_by(name: "Cedar Creek Winery").id
# )
# Wine.create(
# name: "2010 Cabernet Franc",
# varietal: "Cabernet Franc",
# winery_id: Winery.find_by(name: "Cedar Creek Winery").id
# )
# Wine.create(
# name: "2009 Cabernet Franc",
# varietal: "Cabernet Franc",
# winery_id: Winery.find_by(name: "Cedar Creek Winery").id
# )
# Wine.create(
# name: "2008 Cabernet Franc",
# varietal: "Cabernet Franc",
# winery_id: Winery.find_by(name: "Cedar Creek Winery").id
# )
# Wine.create(
# name: "Chardonnay",
# varietal: "Chardonnay",
# winery_id: Winery.find_by(name: "CrossKeys Vineyards")
# )
# Wine.create(
# name: "Ali d' Oro",
# varietal: "Blend",
# winery_id: Winery.find_by(name: "CrossKeys Vineyards")
# )
# Wine.create(
# name: "2014 Joy White",
# varietal: "Vidal Blanc",
# winery_id: Winery.find_by(name: "CrossKeys Vineyards")
# )
# Wine.create(
# name: "Fiore",
# varietal: "Blend",
# winery_id: Winery.find_by(name: "CrossKeys Vineyards")
# )
# Wine.create(
# name: "Cabernet Franc",
# varietal: "Cabernet Franc",
# winery_id: Winery.find_by(name: "CrossKeys Vineyards")
# )
# Wine.create(
# name: "Joy Red",
# varietal: "Chambourcin",
# winery_id: Winery.find_by(name: "CrossKeys Vineyards")
# )
# Wine.create(
# name: "Meritage",
# varietal: "Blend",
# winery_id: Winery.find_by(name: "CrossKeys Vineyards")
# )
# Wine.create(
# name: "Merlot",
# varietal: "Merlot",
# winery_id: Winery.find_by(name: "CrossKeys Vineyards")
# )
# Wine.create(
# name: "Petit Verdot",
# varietal: "Petit Verdot",
# winery_id: Winery.find_by(name: "CrossKeys Vineyards")
# )
# Wine.create(
# name: "Pinot Noir",
# varietal: "Pinot Noir",
# winery_id: Winery.find_by(name: "CrossKeys Vineyards")
# )
# Wine.create(
# name: "Touriga",
# varietal: "Touriga Nacional",
# winery_id: Winery.find_by(name: "CrossKeys Vineyards")
# )
# Wine.create(
# name: "Tavern",
# varietal: "Touriga Nacional",
# winery_id: Winery.find_by(name: "CrossKeys Vineyards")
# )
# Wine.create(
# name: "Fruit d'Vine Apple",
# varietal: "Blend",
# winery_id: Winery.find_by(name: "CrossKeys Vineyards")
# )
# Wine.create(
# name: "Fruit d'Vine Peach",
# varietal: "Blend",
# winery_id: Winery.find_by(name: "CrossKeys Vineyards")
# )
# Wine.create(
# name: "Fruit d'Vine Blueberry",
# varietal: "Blend",
# winery_id: Winery.find_by(name: "CrossKeys Vineyards")
# )
# Wine.create(
# name: "Fruit d'Vine Strawberry",
# varietal: "Blend",
# winery_id: Winery.find_by(name: "CrossKeys Vineyards")
# )


