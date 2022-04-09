puts "destroying all"
Winery.destroy_all
Wine.destroy_all
Varietal.destroy_all
User.destroy_all

puts "seeding"
images=[
"https://images.unsplash.com/photo-1572913017567-02f0649bc4fd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8d2luZXJ5fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
"https://images.unsplash.com/photo-1504279577054-acfeccf8fc52?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8d2luZXJ5fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
"https://images.unsplash.com/photo-1593535388526-a6b8556c5351?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8d2luZXJ5fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60", 
"https://images.unsplash.com/photo-1615780324244-29b71ae12f7d?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8d2luZXJ5fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60",
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

blend=""
white="https://i.imgur.com/nidunZF.jpg"
red="https://i.imgur.com/56wiQ0r.jpeg"
fruit="https://i.imgur.com/HlFZiYo.jpeg"
Varietal.create(
id: 1,
picture: red,
name:  "Cabernet Franc", 
tasting_notes: "Cabernet Franc is the parent grape of both Merlot and Cabernet Sauvignon. Complex reds result, with aromas of raspberry, bramble, and bell pepper (pyrazines)."
)
Varietal.create(
id: 2,    
picture: red,
name: "Cabernet Sauvignon", 
tasting_notes: "The world's most popular red wine grape is a natural cross between Cabernet Franc and Sauvignon Blanc from Bordeaux, France. Cabernet Sauvignon is loved for its high concentration and age worthiness."
)

Varietal.create(
id: 3,    
picture: red,
name: "Carmine", 
tasting_notes: "Carmine wines are dark red or crimson in color, and typically have herbaceous aromas and peppery notes. Carmine has strong, dry tannins and sour acidity."
)
Varietal.create(
id: 4,    
picture: red,
name:  "Chambourcin", 
tasting_notes: "Noted for its distinctive dark coloring and herbaceous aroma, Chambourcin wines are often spicy, with notes of black cherry and plum, and a range of herbal characters."
)
Varietal.create(
id: 5,    
picture: white,
name: "Chardonnay", 
tasting_notes: "One of the world's most popular grapes, Chardonnay is made in a wide range of styles from lean, sparkling Blanc de Blancs to rich, creamy white wines aged in oak."
)
Varietal.create(
id: 6,    
picture: red,
name:  "Gamay", 
tasting_notes: "A fruity, floral and sometimes earthy light-bodied red that is the main variety planted in Beaujolais. Outside of France, Gamay has a tiny but devoted following."
)

Varietal.create(
id: 7,    
picture: white,
name:  "Gewurztraminer", 
tasting_notes: "Treasured for its intense floral aromas, Gewürztraminer has thrived for centuries around Germany. Quality examples are ageworthy, but most are best enjoyed in their youth to preserve acidity."
)
Varietal.create(
id: 8,    
picture: red,
name:  "Grenache", 
tasting_notes: "Grenache (aka Garnacha) produces rich, flavorful red wines and deep, ruby-tinted rosé. The French have championed this grape in the Southern Rhône Valley but it's original home is Spain!"
)
Varietal.create(
id: 9,    
picture: white,
name:  "Grüner Veltliner", 
tasting_notes: "Austria's most important wine is produced in a myriad of styles, the most popular of which are lean, herbaceous, and peppery wines with mouth-watering acidity."
)
Varietal.create(
id: 10,    
picture: red,
name:  "Malbec", 
tasting_notes: "Argentina's most important variety came by way of France, where it's commonly called Côt (sounds like “coat”). Wines are loved for their rich, dark fruit flavors and smooth chocolatey finish."
)
Varietal.create(
id: 11,    
picture: red,
name:  "Merlot", 
tasting_notes: "Merlot is loved for it's boisterous black cherry flavors, supple tannins, and chocolatey finish. On the high end, it's often mistaken with Cabernet Sauvignon and commonly blended with it."
)
Varietal.create(
picture: white,
id: 12,
name:  "Moscato Bianco", 
tasting_notes: "An ancient aromatic white variety originally from Greece that's available in many styles, from dry to sweet to still, sparkling, and fortified. Dry varietal wines show a range of citrus, floral and spice aromas, with a full, dry palate. Sparkling and slightly sparkling examples are typically sweeter and tend towards melon flavors, with sweet, grapey smells. Dessert wines are typically produced as vins doux naturels."
)

Varietal.create(
picture: red,
id: 13,
name:  "Mouvedre", 
tasting_notes: "The grape variety likes warm, dry climates and has small, thick-skinned berries - the textbook combination for making wines with intense color and high tannin levels. In fact, it is the its mouth-drying tannins that earned the grape the French nickname Étrangle-Chien (the dog strangler)."
)
Varietal.create(
id: 14,    
picture: red,
name:  "Norton", 
tasting_notes: "An American hybrid of Vitis vinifera and Vitis aestivalis that shows excellent promise for winemaking in America's midwest. Wines are often rich with both fruity and savory flavors."
)
Varietal.create(
id: 15,    
picture: white,
name:  "Petit Manseng", 
tasting_notes: "Commonly vinified as a richly sweet wine with stonefruit characters such as peach and apricot, citrus and sweet spice."
)
Varietal.create(
id: 16,    
picture:red,
name:  "Petit Verdot", 
tasting_notes: "Considered a minor blending grape in Bordeaux, Petit Verdot has shown promise as a single-varietal wine in warmer climates where it makes smooth full-bodied reds."
)
Varietal.create(
id: 17,    
picture: white,
name:  "Pinot Gris", 
tasting_notes: "Pinot Gris (aka Pinot Grigio) is a pinkish grape mutation of Pinot Noir. It's famously known for zesty white wines, but can also be used for rosé. Look to Northern Italy, Oregon, and Alsace for benchmark examples."
)
Varietal.create(
id: 18,    
picture: red,
name:  "Pinot Noir", 
tasting_notes: "Pinot Noir is the world's most popular light-bodied red wine. It's loved for its red fruit, flower, and spice aromas that are accentuated by a long, smooth finish.
"
)
Varietal.create(
id: 19,    
picture: white,
name:  "Riesling", 
tasting_notes: "An aromatic white variety that can produce white wines ranging in style from bone-dry to very sweet. Germany is the world's most important producer of Riesling."
)
Varietal.create(
id: 20,    
picture: white,
name:  "Roussane", 
tasting_notes: "An intriguing, rare full-bodied white found mostly in Southern France where it's blended into white blends with Grenache Blanc, Marsanne and sometimes Viognier."
)
Varietal.create(
id: 22,    
picture: white,
name:  "Syrah", 
tasting_notes: "A rich, powerful, and sometimes meaty red wine that originated in the Rhône Valley of France. Syrah is the most planted grape of Australia, where they call it Shiraz."
)
Varietal.create(
id: 23,    
picture: white,
name:  "Sauvignon Blanc", 
tasting_notes: "A popular and unmistakable white wine that's loved for its “green” herbal flavors and racy acidity. Sauvignon Blanc grows nearly everywhere and thus, offers a variety of styles ranging from lean to bountiful."
)
Varietal.create(
picture: white,
    id: 24,
    name:  "Seyval Blanc", 

tasting_notes: "Seyval Blanc is produced as dry white wine. It is often touted as having a flavor profile somewhere between Chardonnay and Sauvignon Blanc, perhaps more akin to Chardonnay with its high acidity and positive response to malolactic fermentation and barrel maturation"
)
Varietal.create(
id: 25,    
picture: red,
name:  "Tannat", 
tasting_notes: "Tannat creates wines which are deep, dark, dry and rustic. It contains some of the highest polyphenols (antioxidants) of all red wines."
)
Varietal.create(
id: 26,    
picture: red,
name:  "Touriga Nacional", 
tasting_notes: "An increasingly important red from Portugal that was originally used in Port wines and is now featured in single varietal wines and red blends from the Douro Valley."
)
Varietal.create(
id: 27,    
picture: white,
name:  "Traminette", 
tasting_notes: "Traminette wines tend to be floral and spicy, and are made in both dry and off-dry styles. It is sometimes referred to as a winter-hardy version of Gewürztraminer, without the perfumed intensity of its parent."
)
Varietal.create(
id: 28,    
picture: white,
name:  "Vidal Blanc", 
tasting_notes: "A French hybrid grape, known principally for its use in ice wine making in Canada. The vines are ideal for ice wine, as they are incredibly hardy and suited to harsh winters."
)
Varietal.create(
id: 29,    
picture: white,
name:  "Viognier", 
tasting_notes: "A rich, oily white wine that originated in the Northern Rhône and is rapidly growing in popularity in California, Australia, and beyond. Wines are often age in oak to deliver Chardonnay-like richness."
)
Varietal.create(
id: 30,    
picture: red,
name:  "Zweigelt", 
tasting_notes: "Austria's most planted red wine grape and is a cross between Blaufränkisch and St. Laurent (tastes like Pinot Noir). Resulting wines are bright, tart, and fruity."
)
Varietal.create(
id: 31,    
picture: blend,
name:  "Blend", 
tasting_notes: ""
)
Varietal.create(
id: 32,    
picture: fruit,
name:  "Fruit", 
tasting_notes: "There are few rules when it comes to fruit wine. If you can extract its juice, you can make wine out of it. While some varieties are more popular than others — cherry wine, for instance, is a much-loved favorite — there are so many fruit wines to discover."
)
Varietal.create(
id: 33,    
picture: red,
name:  "Marechal Foch", 
tasting_notes: "Marechal Foch makes a deeply colored wine with earthy characters as well as some jammy, dark-fruit flavors."
)
Varietal.create(
    id: 34,    
    picture: red,
    name:  "Marquette", 
    tasting_notes: "Marquette wines are typically medium bodied, with aromas of cherries, blackcurrants and blackberries. In better examples, more complex aromas such as tobacco and leather may also be exhibited, with spicy pepper notes on the finish."
)
Varietal.create(
    id: 35,    
    picture: white,
    name:  "St. Pepin", 
    tasting_notes: "St. Pepin is used to produce both dry and sweet wines, and has proved well suited to producing ice wine from vineyards around Lake Wisconsin. The wines are typically low in acidity and fairly fruit driven, with Muscat-like floral characters."
)
Varietal.create(
    id: 36,    
    picture: blend,
    name:  "Catawba", 
    tasting_notes: "Catawba can produce a medium bodied wine with moderate acidity and enough sugars to produce off-dry to dry styles of wine. Though the grape is technically considered a 'red wine' grape, Catawba actually produces rosés of varying shades of pink and white wines. The flavor of Catawba can have varying degrees of 'foxiness', which refers to earthy and musky aromas"
)

puts "finished seeding varietals"
Winery.create(name: "Bluestone Vineyard",
    id: 1,
link: "http://www.bluestonevineyard.com",
longitude: -79.00950831588997,
latitude: 38.38772928989438, 
image: images.sample,
address: "4828 Spring Creek Road Bridgewater, VA 22812 ",
description: "Located in the western Shenandoah Valley, Bluestone Vineyard offers impressive views of the mountains and surrounding farm land.  Enjoy the view of our hillside vineyard from our tasting room as you taste our wines and experience a little of the Valley's atmosphere and friendliness.Parties of 8 or more must schedule an appointment for tastings with a deposit of their tasting fee. Dogs on a leash are always welcome at Bluestone Vineyard.  Due to a policy set by the Virginia Department of Agriculture and Consumer Service we cannot allow dogs inside the Tasting Room.  We are sorry for any inconveniences this may cause, but would love for your dog to enjoy the patio and other outdoor areas on the property."
)
Winery.create(name: "Barren Ridge Vineyards",
    id: 2,
link: "http://www.barrenridgevineyards.com",
image: images.sample,
longitude: -78.95595681774128 ,
latitude: 38.13382713764447,    
address: "984 Barren Ridge Road Fishersville, VA 22939 ",
description: "Located on the Higgs family's former apple orchard, Barren Ridge Vineyards is now home to Augusta County's premier winery. John and Shelby Higgs cleared the overgrown land and planted it with grapevines that now produce fourteen award-winning wines. They also converted their 1890's apple barn into a state-of-the-art winery, preserving the original structure and wood beams. The Tasting Room features carefully handcrafted wines that are available daily for tastings. The winery is open seven days a week for complimentary tours, and the patio is always ready for picnics and sunset-viewing."
)
Winery.create(name: "Bluemont Vineyard",
    id: 3,
link: "http://BluemontVineyard.com",
image: images.sample,

longitude: -77.83241213626343 ,
latitude: 39.09643090267176, 
address: "18755 Foggy Bottom Road Bluemont, Virginia 20135 ",
description: "Bluemont Vineyard was conceived in a love affair between agriculture and wine. Established in 2007, This small country winery is a natural extension of Great Country Farms (CSA) across the street. As a small-run winery, an average of 5000 carefully crafted cases of wine are produced each year. Discover a broad spectrum of wines with an emphasis on quality of product as well as skill, enthusiasm and artistry of the team of people creating each unique vintage.The Stable at Bluemont Vineyard is also available for private meetings, events and weddings."
)
Winery.create(name: "Blue Ridge Vineyard",
    id: 4,
link: "http://www.blueridgevineyard.com",
image: images.sample,
longitude: -79.74751890056918,
latitude: 37.63062738870603, 
address: "1027 Shiloh Dr. Eagle Rock, VA 24085 ",
description: "Located at the head of the Shenandoah Valley with magnificent views in the heart of Blue Ridge Mountain country. Pinot Noir, Riesling, Gewurtztraminer, Cabernet Franc, and Traminette wines are crafted from old growth vines. Enjoy a picnic and walk the mountain trails on the 300-acre farm. Plan your wedding, reunion, or corporate event in our spacious barn."
)
Winery.create(name: "Brix & Columns Vineyards",
    id: 5,
link: "",
image: images.sample,

longitude: -78.6997253447254,
latitude: 38.36885581464876,    
address: "1501 Dave Berry Road McGaheysville, VA 22840 ",
description: "Come enjoy our spectacular view while sipping on one of our delicious wines. We are located in the Shenandoah Valley, 20 minutes from Harrisonburg and eight minutes from Massanutten Village."
)
Winery.create(name: "Cave Ridge Vineyard",
    id: 6,
link: "http://www.caveridge.com",
image: images.sample,

longitude: -78.67020488888883,
latitude: 38.81693623013761,     
address: "1476 Conicville Rd Mt. Jackson, VA 22842 ",
description: "Located in the foothills overlooking the Shenandoah Valley, Cave Ridge Vineyard produces wines only from grapes grown at our vineyard under sustainable farming practices.  Facilities include a beautiful tasting room with large separate event room overlooking an expansive cobblestone courtyard with water fountain.  A full service kitchen allows for food preparation for private parties and weddings."
)
Winery.create(name: "Cedar Creek Winery",
    id: 7,
link: "http://www.cedarcreekvineyard.com",
image: images.sample,
longitude: -78.48308883121399,
latitude: 39.00614229704264,      
address: "7384 Zepp Road Star Tannery, VA 22654 ",
description: "Cedar Creek Winery LLC is a unique, small family owned farm winery and vineyard located in the mountains of the Northern Shenandoah Valley, with spectacular vistas along the banks of historic Cedar Creek in Shenandoah County. Cedar Creek specializes in the production of award-winning Estate bottled Cabernet Franc and Chardonnay and is not an entertainment venue."
)
Winery.create(name: "CrossKeys Vineyards",
    id: 8,
link: "http://www.crosskeysvineyards.com",
image: images.sample,
longitude: -78.85098130239652,
latitude: 38.322971306728675,      
address: "6011 East Timber Ridge Road Mt. Crawford, VA 22841 ",
description: "From the first plantings in 2002 to the opening of the state of the art facility in May of 2008, CrossKeys seeks to welcome guests to discover, taste and experience the best in estate grown wines.  Situated in the heart of the Shenandoah, only minutes from I-81, Massanutten Resort and downtown Harrisonburg, the winery provides panoramic views of vineyards and the surrounding mountains.  Open daily for tasting and tours, the facility houses the tasting room, winery and four distinct function rooms that are suitable for small and large groups.  The spacious courtyard and front terraces provides space to sit and relax while enjoying our Estate Wines.  A comprehensive program in wine education and the arts is a key component of the winery mission. Join us for lunch prepared by our Executive Chef daily from 11 am to 4:30 pm (Nov-Mar)"
)
Winery.create(name: "Glen Manor Vineyards",
    id: 9,
link: "http://www.glenmanorvineyards.com",
image: images.sample,
longitude: -78.22913631587828,
latitude: 38.840224786386315, 
address: "2244 Browntown Road Front Royal, Virginia 22630 ",
description: "Wines with a sense of place from Virginia's Northwestern Blue Ridge Mountains.  Our interest is in estate grown Sauvignon Blanc, Petit Manseng and red Bordeaux blends and varietals.Tasting fee range $4 to $10 per person depending on the number of wines being offered.We are unable to accommodate limousines, buses or groups larger than six.  This six person group size limit includes minors and non-tasters.We do not provide any foods but you are welcome to enjoy your own food from home, here with our wines."
)
Winery.create(name: "James Charles Winery & Vineyard",
    id: 10,
link: "http://jamescharleswine.com",
image: images.sample,

longitude: -78.23071314655078,
latitude: 39.125878355285714, 
address: "4063 Middle Rd Winchester, VA 22602 ",
description: "Founded in 2015, James Charles Winery is the embodiment of the Bogaty's family story. We make old-world style wines in the heart of Virginia's Shenandoah Valley AVA, which strongly resembles classic winemaking regions in France. Our wines are bold, full-bodied and complex.James Charles Winery & Vineyard is the northern Shenandoah Valley's premier winery, vineyard and wedding venue - located just outside of Winchester, Virginia, it's easily accessible from Interstate 81, US Route 11, Interstate 66, US Route 522, US Route 15, US Route 17, VA Route 7, Northern Virginia and Washington, DC, yet a world away in the rolling hills of the Valley's apple country.Founded in 2015 by the Bogaty family (of Veramar Vineyard acclaim), winemaker Justin Bogaty makes Old-World-style wines like Viognier, Riesling, Chardonnay, Fumé Blanc, Merlot, Petit Verdot, Port-style white dessert wine and Bordeaux-style blends, as well as wines inspired by New World winemaking, like Syrah and Zinfandel.James Charles Winery & Vineyard strives to provide big-city chic with a side of Valley charm, all within the beautiful setting of the vineyard grounds, apple orchards and rolling hills as far as the eye can see. Whether your coming to taste our hand-crafted wine or hosting an elegant winery wedding, this winery and event venue is a class above."
)
Winery.create(name: "Jump Mountain Vineyard",
    id: 11,
link: "http://www.jumpwines.com",
image: images.sample,


longitude: -79.38716184473647 ,
latitude: 37.93559673589506,     
address: "1493 Walkers Creek Rd Rockbridge Baths, VA 24473 ",
description: "Jump Mountain Vineyard is a family-owned farm winery. Our goal is to produce carefully crafted, European-style wines with a distinctly local character from grapes grown and processed on the property. Protected by the sandstone knob of Jump Mountain, a local geographic landmark, the vineyard lies on the sunny hillsides of Walkers Creek Valley west of historic Lexington, Virginia.    The mesoclimate of this site provides conditions conducive to growing vinifera grape varieties. Bring a picnic and enjoy spectacular views of Jump Mountain!"
)
Winery.create(name: "Lexington Valley Vineyard",
    id: 12,
link: "http://lexingtonvalleyvineyard.com",
image: images.sample,

longitude: -79.41722618337829 ,
latitude: 37.865731497318016, 
address: "80 Norton Way Rockbridge Baths, Virginia 24473 ",
description: "A family owned Virginia farm winery located about 15 minutes from Lexington in a beautiful setting nestled in the Shenandoah Valley. The winery features small vintage hand crafted wines.  Outside deck and snack baskets available during May - October."
)
Winery.create(name: "Marceline Vineyards",
    id: 13,
link: "www.Marcelinevineyards.com",

image: images.sample,
longitude: -78.82635036006528 ,
latitude: 38.371588319738,      
address: "1588 Cross Keys Rd Mt. Crawford, VA 22841 ",
description: "",
)
Winery.create(name: "Muse Vineyards",
    id: 14,
link: "http://www.musevineyards.com",
image: images.sample,

longitude: -78.50264221587783,
latitude: 38.857005583136804, 
address: "16 Serendipity Lane Woodstock, VA 22664 ",
description: "Muse Vineyards, founded in 2005, in the historic and scenic Shenandoah Valley produces estate wines with all grapes grown on site from the highest quality French certified clones. We are producing a bordeaux-style blend of cabernet sauvignon, cabernet franc, merlot, malbec and petit verdot as well as single varietals. We also have chardonnay and red and white Rhone style wines such as viognier, marsanne, roussanne, grenache and syrah. In 2015, we won the Governor's Award for our 2009 Clio. The vineyard site has been continuously farmed since 1792 and the historic house dates from the same year."
)
Winery.create(name: "North Mountain Vineyard & Winery",
    id: 15,
link: "http://www.northmountainvineyard.com",
image: images.sample,

longitude: -78.47892432937049,
latitude: 38.949313775903335, 
address: "4374 Swartz Road Maurertown, Virginia 22644 ",
description: "North Mountain VineyardDiscover award winning wines, exceptional mountain views, and storybook setting in the Shenandoah Valley of Virginia! Experience elegant wines exclusive to our vineyard's terroir. Tastings, cellar tours, special events."
)
Winery.create(name: "Ox Eye Vineyards",
    id: 16,
link: "http://www.OxEyeVineyards.com",
image: images.sample,

longitude: -79.07409121958592,
latitude: 38.14717971606676, 
address: "44 Middlebrook Avenue Staunton, VA 24401 ",
description: "Ox-Eye Vineyards was the first vinifera vineyard in Augusta County.  We began planting vines in 1999 and have sold grapes to numerous wineries in Virginia since that time.  In 2010 we built our own winery.  In 2011 we opened our tasting room is in a restored historic building in the wharf district in downtown Staunton.   Come enjoy a glass of 100% estate grown wine on our outdoor covered patio or upstairs in our art gallery featuring a new Virginia artist every 90 days."
)
Winery.create(name: "Rockbridge Vineyard",
    id: 17,
link: "http://www.rockbridgevineyard.com",
image: images.sample,

longitude: -79.24127481590128 ,
latitude: 37.94223864623973, 
address: "35 Hill View Lane Raphine, VA 24472 ",
description: "Nestled in the historic Valley of Virginia between the Blue Ridge and Allegheny Mountains, Rockbridge Vineyard produces a wide range of award winning wines. Groups of ten or more we request reservations."
)
Winery.create(name: "Shenandoah Vineyards",
    id: 18,
link: "http://www.ShenandoahVineyardsVA.com",
image: images.sample,

longitude: -78.5590626644268,
latitude: 38.84896950594859, 
address: "3659 S. Ox Rd. Edinburg, VA 22824 ",
description: "Shenandoah Vineyards, founded in 1976, is Shenandoah Valley's oldest winery and is also the second oldest winery in Virginia. Award-winning wines made in the European tradition using modern techniques and. We have a wine for every palate and every occasion. The winery is in an old Civil War era barn. Come experience the tours and tastings of our wines, enjoy a picnic on the decks overlooking the vineyard and the beautiful Massanutten mountains, and shop in our unique wine-related gift shop."
)
Winery.create(name: "Twin Oaks Tavern Winery",
    id: 19,
link: "http://www.twinoakstavernwinery.com",
image: images.sample,

longitude: -77.84499076004599,
latitude: 39.12121846905115, 
address: "18035 Raven Rocks Rd Bluemont, Virginia 20135 ",
description: "'Top of the mountain to you!' In the early 1900's, Twin Oaks Tavern served as country inn where city people could relax in the cool breezes of the Blue Ridge Mountains. Today our winery and vineyard, located at 1150' altitude in the Bear's Den Historic District, offer breathtaking views and wines to match. Visit our beautiful tasting room and decks and enjoy views of the Shenandoah Valley and spectacular sunsets.Arrange for a tour of our vineyard and wine cellar. Kids and dogs are welcome. Visit www.twinoakstavernwinery.com for weekly and monthly Special Events and and check out Twin Oak Tavern's wine blog."
)
Winery.create(name: "Valerie Hill Vineyard & Winery",
    id: 20,
link: "http://www.valeriehillwinery.com",
image: images.sample,

longitude: -78.27364314470674,
latitude: 39.09037141461424, 
address: "1687 Marlboro Road Stephens City, VA 22655 ",
description: "Valerie Hill Vineyard & Winery is a family owned and operated farm winery born from our commitment to preserve the rural beauty of the Commonwealth, our desire to build a legacy for future generations of our family, and our passion for Virginia wine.  Located just south of Winchester near Stephens City, Virginia, our 18 acre farm is steeped in history.  The focus of our winery is our Tasting House, a Federal style brick manor house dating back to 1807 and the varietalsake of our business - Valerie Hill.Valerie Hill was built in 1807 by Revolutionary War Captain Peter Rust.  She has been caringly restored and serves as the public centerpiece of the winery.  Many of her rooms are open to the public to enjoy wine tastings and light fare, surrounded by original heart pine floors and horsehair plaster walls.  One visit, and we're sure you will love Valerie Hill's quaint beauty just as much as we do."
)
Winery.create(name: "Veramar Vineyard ",
    id: 21,
link: "http://veramar.com",
image: images.sample,

longitude: -77.91466831771595,
latitude: 39.118166982259694, 
address: "905 Quarry Road Berryville, VA 22611 ",
description: "Founded in 2000, Veramar Vineyard was one of the first successful wineries in the northern Shenandoah Valley. The vineyard is run by James and Della Bogaty, who were original members of the Shenandoah Valley Wine Trail. Justin, their son, is the winemaker. He is a graduate of VMI and has a certificate of oenology from UC Davis. Our wine is internationally-acclaimed, and is made at the foothills of the Blue Ridge Mountains.Veramar Vineyard is located of Rt 7 in the northern Shenandoah Valley AVA of Virginia. Right over the Blue Ridge Mountains from Loudoun County, Veramar is a short drive from Leesburg or Winchester, and easily accessible from Washington, DC, Northern Virginia, Frederick, MD, Harpers Ferry, WV, and the Interstate 81 corridor.This hidden gem, nestled in the rolling hills near the Shenandoah River, has an expansive views of the mountains from the 28 acres of vineyards and the rustic yet elegant tasting room and terrace. In this idyllic setting we grow Cabernet Franc, Chardonnay, Seyval Blanc, Traminette, Norton, Albariño, Vidal Blanc and Malbec wine grapes, and make Virginian wine across a spectrum of varietals and blends. Each wine distinctively expresses our dedication to premium Virginia winemaking.The Bogaty family founded Veramar in 2000, when there were very few wineries operating successfully in this part of the state. Since then, the business has grown to include their son, Justin Bogaty, as winemaker, and there has certainly been a tremendous boom in the Virginian wine industry since then, especially in Loudoun County. But over the years we have never lost our values of family and sustainability - every aspect of Veramar, from the vineyard to the winemaking itself, is managed with the goal of creating a family business that can be passed down to many generations of Bogatys to come. We strive to be grounded enough to forego trends and fads in favor of the lasting principles that will sustain Veramar and Shenandoah Valley winemaking culture many years into the future.Our tasting room is open year-round, seven days a week, and opens daily at noon. The estate and vineyards are also the perfect setting for an elegant winery wedding or private party, a venue perfectly situated near Northern Virginia, Winchester, VA, and Washington, DC. We hope you'll visit us, and experience everything that premium Virginian wine has to offer!"
)
Winery.create(name: "Winery at Kindred Pointe",
    id: 22,
link: "http://www.kindredpointe.com",
image: images.sample,

longitude: -78.65195017539435,
latitude: 38.796891100188766, 
address: "3575 Conicville Road Mount Jackson, VA 22842 ",
description: "The Winery at Kindred Pointe is located on 58 acres in Shenandoah County, 5 miles west of Mount Jackson, Virginia. Panoramic views and rolling pastures surround the tasting room which is located in a renovated horse barn. Kindred Pointe is a perfect place to enjoy a peaceful, beautiful setting while sipping a glass of wine with friends and family. We are conveniently located 5 miles west of I-81 with great logistics: good roads and driveway, convenient parking, handicap accessible."
)
Winery.create(name: "Wisteria Farm & Vineyard",
    id: 23,
link: "http://wisteriavineyard.com/",
image: images.sample,
longitude: -78.47373826006016,
latitude: 38.574299248125755,
address: "1126 Marksville Rd. Stanley, Virginia 22851 ",
description: "We are located in the Shenandoah Valley in Page county, known for its rural character and scenic beauty, between the towns of Luray and Stanley.  Our small farm winery is nestled on the western slope of the Blue Ridge mountains.  All of our wine is crafted from 100% estate-grown grapes.  This is a working farm and vineyard; we also have a flock of natural-colored Romney sheep as well as free-roaming chickens.We invite you to come out and enjoy a day in the country.  Bring a picnic and wander around the farm and vineyard or just sit on our deck, enjoying the wine and the surroundings.In addition to our wines, we also have wool products for sale from our flock including yarn and blankets.Groups of 8 or more, please call ahead to help make it a more enjoyable experience for all!  As a farm, we ask that you please leave your pet at home when you come to visit us - we're happy to share our dog with you while you are our guest!"
)
Winery.create(name: "Wolf Gap Vineyard & Winery",
    id: 24,
link: "http://www.wolfgapvineyard.com",
image: images.sample,
longitude: -78.63236064471361,
latitude: 38.82754416653014, 
address: "123 Stout Road Edinburg, Virginia 22824 ",
description: "The folks at Wolf Gap Vineyard are dedicated to producing perfect grapes, hand nurtured to produce the best quality wine possible year in and year out.  We have chosen to make small batches of wine in order to provide the care and attention needed to produce truly superior wines rarely found in larger mass production wineries.  For a video tour of the vineyard go to our website www.wolfgapvineyard.com"
)
Wine.create( name: "2017 Chardonnay",
winery_id: 1,
varietal_id: 5)
Wine.create( name: "2019 Vidal Blanc",
winery_id: 1,
varietal_id: 28)
Wine.create( name: "2018 Viognier",
winery_id: 1,
varietal_id: 29)
Wine.create( name: "2018 Traminette",
winery_id: 1,
varietal_id: 27)
Wine.create( name: "2018 Rosé",
winery_id: 1,
varietal_id: 4)
Wine.create( name: "2019 Bridgewater Gold",
winery_id: 1,
varietal_id: 15)
Wine.create( name: "2017 Cabernet Franc",
winery_id: 1,
varietal_id: 1)
Wine.create( name: "Stainless Steel Chardonnay",
winery_id: 1,
varietal_id: 5)
Wine.create( name: "2017 Quartz Hill Red ",
winery_id: 1,
varietal_id: 4)
Wine.create( name: "2016 Bridgewater Crimson ",
winery_id: 1,
varietal_id: 16)
Wine.create( name: "2015 Merlot ",
winery_id: 1,
varietal_id: 11)
Wine.create( name: "2017 Cabernet Sauvignon ",
winery_id: 1,
varietal_id: 2)
Wine.create( name: "2015 Dry Dock ",
winery_id: 1,
varietal_id: 14)
Wine.create( name: "Beau",
winery_id: 1,
varietal_id: 28)
Wine.create( name: "Crooked and Weedy",
winery_id: 1,
varietal_id: 31)
Wine.create( name: "2020 Moscato ",
winery_id: 1,
varietal_id: 12)
Wine.create( name: "2016 Blue Ice ",
winery_id: 1,
varietal_id: 27)
Wine.create( name: "2018 Blanc de Blancs ",
winery_id: 1,
varietal_id: 5)
Wine.create( name: "2018 Wilton White ",
winery_id: 1,
varietal_id: 15)
Wine.create( name: "2020 Petit Manseng ",
winery_id: 1,
varietal_id: 15)
Wine.create( name: "2017 The Steep Face ",
winery_id: 1,
varietal_id: 4)
Wine.create( name: "2017 Valley Red ",
winery_id: 1,
varietal_id: 16)
Wine.create( name: "2014 Houndstooth ",
winery_id: 1,
varietal_id: 11)
Wine.create( name: "2016 Petit Verdot ",
winery_id: 1,
varietal_id: 16)
Wine.create( name: "2020 Odd Bird ",
winery_id: 1,
varietal_id: 1)
Wine.create( name: "2019 Cabernet Franc ",
winery_id: 1,
varietal_id: 1)

Wine.create(name: "2016 Meritage",
winery_id: 2,
varietal_id: 31)
Wine.create(name: "2017 Port",
winery_id: 2,
varietal_id: 4)
Wine.create(name: "2018 Cabernet Franc",
winery_id: 2,
varietal_id: 1)
Wine.create(name: "2018 Merlot",
winery_id: 2,
varietal_id: 11)
Wine.create(name: "2018 Petit Verdot",
winery_id: 2,
varietal_id: 16)
Wine.create(name: "2019 Chardonnay",
winery_id: 2,
varietal_id: 5)
Wine.create(name: "2019 Christof",
winery_id: 2,
varietal_id: 28)
Wine.create(name: "2019 Harmony",
winery_id: 2,
varietal_id: 15)
Wine.create(name: "2019 Red Barren",
winery_id: 2,
varietal_id: 4)
Wine.create(name: "2019 Touriga",
winery_id: 2,
varietal_id: 26)
Wine.create(name: "2019 Traminette",
winery_id: 2,
varietal_id: 27)
Wine.create(name: "2020 Rosé",
winery_id: 2,
varietal_id: 11)
Wine.create(name: "2020 Traminette",
winery_id: 2,
varietal_id: 27)
Wine.create(name: "2020 Vidal Blanc",
winery_id: 2,
varietal_id: 28)
Wine.create(name: "2021 Apple Wine",
winery_id: 2,
varietal_id: 32)
Wine.create(name: "2021 Riesling",
winery_id: 2,
varietal_id: 19)
Wine.create(name: "2021 Sauvignon Blanc",
winery_id: 3,
varietal_id: 23)
Wine.create(name: "2020 Chardonnay",
winery_id: 3,
varietal_id: 5)
Wine.create(name: "2020 Viognier Reserve",
winery_id: 3,
varietal_id: 29)
Wine.create(name: "2020 Sparkling Signature White",
winery_id: 3,
varietal_id: 31)
Wine.create(name: "2020 Sparkling Peach",
winery_id: 3,
varietal_id: 32)
Wine.create(name: "2020 Chambourcin",
winery_id: 3,
varietal_id: 4)
Wine.create(name: "2019 Merlot",
winery_id: 3,
varietal_id: 11)
Wine.create(name: "2019 Cabernet Sauvignon",
winery_id: 3,
varietal_id: 2)
Wine.create(name: "2019 Bourbon Barrel Cabernet Sauvignon",
winery_id: 3,
varietal_id: 2)
Wine.create(name: "2019 Cabernet Franc",
winery_id: 3,
varietal_id: 1)
Wine.create(name: "2019 Ascent",
winery_id: 3,
varietal_id: 11)
Wine.create(name: "Riesling",
winery_id: 4,
varietal_id: 19)
Wine.create(name: "Gewurztraminer",
winery_id: 4,
varietal_id: 7)
Wine.create(name: "Traminette",
winery_id: 4,
varietal_id: 27)
Wine.create(name: "Big Bear White ",
winery_id: 4,
varietal_id: 19)
Wine.create(name: "Equinox",
winery_id: 4,
varietal_id: 19)
Wine.create(name: "Big Bear Red",
winery_id: 4,
varietal_id: 1)
Wine.create(name: "Solstice",
winery_id: 4,
varietal_id: 4)
Wine.create(name: "Cabernet Franc",
winery_id: 4,
varietal_id: 1)
Wine.create(name: "Pinot Noir ",
winery_id: 4,
varietal_id: 18)
Wine.create(name: "Sweet Shiloh",
winery_id: 4,
varietal_id: 31)
Wine.create(name: "2019 Chardonnay",
winery_id: 5,
varietal_id: 5)
Wine.create(name: "2018 Viognier",
winery_id: 5,
varietal_id: 29)
Wine.create(name: "2019 Petit Manseng",
winery_id: 5,
varietal_id: 15)
Wine.create(name: "2020 Rosé",
winery_id: 5,
varietal_id: 31)
Wine.create(name: "2020 White Brix",
winery_id: 5,
varietal_id: 29)
Wine.create(name: "2019 Sweet W",
winery_id: 5,
varietal_id: 28)
Wine.create(name: "Hallielujah Sparkling White",
winery_id: 5,
varietal_id: 31)
Wine.create(name: "Hallielujah Sparkling Rosé",
winery_id: 5,
varietal_id: 31)
Wine.create(name: "2020 Lil Em",
winery_id: 5,
varietal_id: 15)
Wine.create(name: "2019 Kerus I ",
winery_id: 5,
varietal_id: 4)
Wine.create(name: "2019 Cabernet Franc ",
winery_id: 5,
varietal_id: 1)
Wine.create(name: "2018 Petit Verdot",
winery_id: 5,
varietal_id: 16)
Wine.create(name: "2018 McGahey Red",
winery_id: 5,
varietal_id: 11)
Wine.create(name: "2020 Kerus II ",
winery_id: 5,
varietal_id: 4)
Wine.create(name: "2019 Six Penny Postscript",
winery_id: 5,
varietal_id: 4)
Wine.create(name: "2019 Petit Verdot",
winery_id: 6,
varietal_id: 16)
Wine.create(name: "2018 Petit Verdot",
winery_id: 6,
varietal_id: 16)
Wine.create(name: "Summer Splash NV",
winery_id: 6,
varietal_id: 31)
Wine.create(name: "2020 White Wine of Cabernet Franc (Cabernet Blanc)",
winery_id: 6,
varietal_id: 1)
Wine.create(name: "2019 Cabernet Franc",
winery_id: 6,
varietal_id: 1)
Wine.create(name: "2021 Viognier",
winery_id: 6,
varietal_id: 29)
Wine.create(name: "Fandango",
winery_id: 6,
varietal_id: 31)
Wine.create(name: "Le Bon Minou",
winery_id: 6,
varietal_id: 31)
Wine.create(name: "Traminette",
winery_id: 6,
varietal_id: 27)
Wine.create(name: "RP Cuvée Select",
winery_id: 6,
varietal_id: 31)
Wine.create(name: "Fille Des Etoiles Daughter of the Stars",
winery_id: 6,
varietal_id: 1)
Wine.create(name: "Rosé",
winery_id: 6,
varietal_id: 31)
Wine.create(name: "2019 Chambourcin",
winery_id: 6,
varietal_id: 4)
Wine.create(name: "2019 Fossil Hill Reserve",
winery_id: 6,
varietal_id: 31)
Wine.create(name: "2019 Cabernet Sauvignon",
winery_id: 6,
varietal_id: 2)
Wine.create(name: "2020 Chardonnay",
winery_id: 6,
varietal_id: 5)
Wine.create(name: "2015 Valley To Valley Riesling",
winery_id: 6,
varietal_id: 19)
Wine.create(name: "Mount Jackson Rouge",
winery_id: 6,
varietal_id: 31)
Wine.create(name: "La Petite Traminette",
winery_id: 6,
varietal_id: 27)
Wine.create(name: "Sauvignon Blanc",
winery_id: 9,
varietal_id: 23)
Wine.create(name: "Petit Manseng	",
winery_id: 9,
varietal_id: 15)
Wine.create(name: "Morales Rosé",
winery_id: 9,
varietal_id: 2)
Wine.create(name: "Vin Rouge",
winery_id: 9,
varietal_id: 2)
Wine.create(name: "Cabernet Franc	",
winery_id: 9,
varietal_id: 1)
Wine.create(name: "St. Ruth",
winery_id: 9,
varietal_id: 2)
Wine.create(name: "Hodder Hill",
winery_id: 9,
varietal_id: 2)
Wine.create(name: "Petit Verdot	",
winery_id: 9,
varietal_id: 16)
Wine.create(name: "Raepheus",
winery_id: 9,
varietal_id: 15)
Wine.create(name: "Cabernet Sauvignon 2017",
winery_id: 11,
varietal_id: 2)
Wine.create(name: "Mountain Mist Rosé",
winery_id: 11,
varietal_id: 22)
Wine.create(name: "Grüner Veltliner 2018",
winery_id: 11,
varietal_id: 9)
Wine.create(name: "Livia 2019",
winery_id: 11,
varietal_id: 1)
Wine.create(name: "Chardonnay",
winery_id: 13,
varietal_id: 5)
Wine.create(name: "Chardonnay Reserve",
winery_id: 13,
varietal_id: 5)
Wine.create(name: "Vidal Blanc",
winery_id: 13,
varietal_id: 28)
Wine.create(name: "Viognier",
winery_id: 13,
varietal_id: 29)
Wine.create(name: "Rosé",
winery_id: 13,
varietal_id: 11)
Wine.create(name: "Cabernet Sauvignon",
winery_id: 13,
varietal_id: 2)
Wine.create(name: "Cabernet Franc",
winery_id: 13,
varietal_id: 1)
Wine.create(name: "Ti Amo",
winery_id: 13,
varietal_id: 27)
Wine.create(name: "Amore di Notte",
winery_id: 13,
varietal_id: 31)
Wine.create(name: "Erato",
winery_id: 14,
varietal_id: 12)
Wine.create(name: "Chardonnay",
winery_id: 14,
varietal_id: 5)
Wine.create(name: "Roussane",
winery_id: 14,
varietal_id: 20)
Wine.create(name: "Cabernet Franc	2017",
winery_id: 14,
varietal_id: 1)
Wine.create(name: "Petit Verdot	2017",
winery_id: 14,
varietal_id: 16)
Wine.create(name: "Petit Verdot	2019",
winery_id: 14,
varietal_id: 16)
Wine.create(name: "Clio 2017",
winery_id: 14,
varietal_id: 1)
Wine.create(name: "Gamay 2020",
winery_id: 14,
varietal_id: 6)
Wine.create(name: "Pichet",
winery_id: 14,
varietal_id: 31)
Wine.create(name: "2016 Vidal Blanc",
winery_id: 15,
varietal_id: 28)
Wine.create(name: "2017 Grüner Veltliner",
winery_id: 15,
varietal_id: 9)
Wine.create(name: "2016 Chardonnay",
winery_id: 15,
varietal_id: 5)
Wine.create(name: "2017 Zweigelt Rosé",
winery_id: 15,
varietal_id: 30)
Wine.create(name: "2017 Riesling",
winery_id: 15,
varietal_id: 19)
Wine.create(name: "Oktoberfest",
winery_id: 15,
varietal_id: 27)
Wine.create(name: "Virginia Apple Wine",
winery_id: 15,
varietal_id: 32)
Wine.create(name: "Mountain Sunset",
winery_id: 15,
varietal_id: 32)
Wine.create(name: "2017 Sonnenberg Cabernet Sauvignon",
winery_id: 15,
varietal_id: 2)
Wine.create(name: "2017 Ribbon Rock Cabernet Sauvignon",
winery_id: 15,
varietal_id: 2)
Wine.create(name: "2019 Cabernet Franc",
winery_id: 15,
varietal_id: 1)
Wine.create(name: "2019 Zweigelt",
winery_id: 15,
varietal_id: 30)
Wine.create(name: "2019 Petit Verdot",
winery_id: 15,
varietal_id: 16)
Wine.create(name: "Mountain Midnight",
winery_id: 15,
varietal_id: 4)
Wine.create(name: "2019 Chambourcin Foster Reserve",
winery_id: 15,
varietal_id: 4)
Wine.create(name: "Toms Brook Red",
winery_id: 15,
varietal_id: 4)
Wine.create(name: "Spiced Holiday",
winery_id: 15,
varietal_id: 31)
Wine.create( name: "Reserve Scale House Chardonnay 2019",
winery_id: 16,
varietal_id: 5)
Wine.create( name: "Reserve Scale House Riesling 2021",
winery_id: 16,
varietal_id: 19)
Wine.create( name: "Chardonnay 2018",
winery_id: 16,
varietal_id: 5)
Wine.create( name: "Traminette 2017",
winery_id: 16,
varietal_id: 27)
Wine.create( name: "Riesling 2021",
winery_id: 16,
varietal_id: 19)
Wine.create( name: "White Ox 2020",
winery_id: 16,
varietal_id: 31)
Wine.create( name: "Grü-V 2021",
winery_id: 16,
varietal_id: 9)
Wine.create( name: "Pinot Noir 2018",
winery_id: 16,
varietal_id: 18)
Wine.create( name: "Cabernet Franc 2019",
winery_id: 16,
varietal_id: 1)
Wine.create( name: "2016 DeChiel Pinot Noir",
winery_id: 17,
varietal_id: 18)
Wine.create( name: "2008 DeChiel Syrah",
winery_id: 17,
varietal_id: 22)
Wine.create( name: "2015 DeChiel Merlot",
winery_id: 17,
varietal_id: 11)
Wine.create( name: "Extra Virginia Claret",
winery_id: 17,
varietal_id: 2)
Wine.create( name: "2018 Sparkling Pinot Noir Blanc de Noir",
winery_id: 17,
varietal_id: 18)
Wine.create( name: "2019 Pinot Noir Blanc de Noir",
winery_id: 17,
varietal_id: 18)
Wine.create( name: "2018 DeChiel Viognier",
winery_id: 17,
varietal_id: 29)
Wine.create( name: "2019 St. Mary Blanc",
winery_id: 17,
varietal_id: 28)
Wine.create( name: "2017 Rose Hill Rosé",
winery_id: 17,
varietal_id: 4)
Wine.create( name: "2018 Rockbridge Chardonnay",
winery_id: 17,
varietal_id: 5)
Wine.create( name: "2019 DeChiel Reserve Chardonnay",
winery_id: 17,
varietal_id: 5)
Wine.create( name: "2019 Tuscarora White",
winery_id: 17,
varietal_id: 28)
Wine.create( name: "2016 DeChiel Riesling",
winery_id: 17,
varietal_id: 19)
Wine.create( name: "2017 DeChiel White Riesling",
winery_id: 17,
varietal_id: 19)
Wine.create( name: "2019 Traminette",
winery_id: 17,
varietal_id: 27)
Wine.create( name: "2015 Vignoles",
winery_id: 17,
varietal_id: 31)
Wine.create( name: "2014 Rockbridge Pinot Noir",
winery_id: 17,
varietal_id: 18)
Wine.create( name: "2015 Tuscarora Red",
winery_id: 17,
varietal_id: 4)
Wine.create( name: "2016 Chambourcin",
winery_id: 17,
varietal_id: 4)
Wine.create( name: "2014 DeChiel Merlot",
winery_id: 17,
varietal_id: 11)
Wine.create( name: "2016 DeChiel Cabernet Franc",
winery_id: 17,
varietal_id: 1)
Wine.create( name: "2017 DeChiel Meritage",
winery_id: 17,
varietal_id: 31)
Wine.create( name: "2016 DeChiel Syrah",
winery_id: 17,
varietal_id: 22)
Wine.create( name: "2014 Extra Virginia Claret",
winery_id: 17,
varietal_id: 2)
Wine.create( name: "20-20 Jeremiah",
winery_id: 17,
varietal_id: 31)
Wine.create( name: "2019 Lexington & Concord",
winery_id: 17,
varietal_id: 31)
Wine.create( name: "2017 V d Or",
winery_id: 17,
varietal_id: 28)
Wine.create( name: "Sweet Petit NV",
winery_id: 18,
varietal_id: 15)
Wine.create( name: "Cabernet Sauvignon 2018",
winery_id: 18,
varietal_id: 2)
Wine.create( name: "Blanc 2018",
winery_id: 18,
varietal_id: 24)
Wine.create( name: "Chambourcin 2020",
winery_id: 18,
varietal_id: 4)
Wine.create( name: "Riesling 2018",
winery_id: 18,
varietal_id: 19)
Wine.create( name: "Chardonnay 2018",
winery_id: 18,
varietal_id: 5)
Wine.create( name: "Pinot Gris 2018",
winery_id: 18,
varietal_id: 17)
Wine.create( name: "Cuvée Emma 2019",
winery_id: 18,
varietal_id: 17)
Wine.create( name: "Rosé 2020",
winery_id: 18,
varietal_id: 31)
Wine.create( name: "Cabernet Franc 2018",
winery_id: 18,
varietal_id: 1)
Wine.create( name: "2018 John Barron Petit Verdot",
winery_id: 20,
varietal_id: 16)
Wine.create( name: "2019 Stone Chimney Red",
winery_id: 20,
varietal_id: 25)
Wine.create( name: "2019 Apparition",
winery_id: 20,
varietal_id: 14)
Wine.create( name: "2019 Manor House White",
winery_id: 20,
varietal_id: 28)
Wine.create( name: "2019 Cameo",
winery_id: 20,
varietal_id: 31)
Wine.create( name: "2018 Cabernet Franc",
winery_id: 20,
varietal_id: 1)
Wine.create( name: "2019 Reserve Merlot",
winery_id: 20,
varietal_id: 11)
Wine.create( name: "2019 Sparkling Rosé",
winery_id: 20,
varietal_id: 1)
Wine.create( name: "2020 Seyval Blanc",
winery_id: 20,
varietal_id: 24)
Wine.create( name: "2018 Antebellum",
winery_id: 20,
varietal_id: 29)
Wine.create( name: "2019 Vidal Blanc",
winery_id: 20,
varietal_id: 28)
Wine.create( name: "2019 Chardonnay",
winery_id: 20,
varietal_id: 5)
Wine.create( name: "Rooster Red",
winery_id: 21,
varietal_id: 31)
Wine.create( name: "The Founder Red",
winery_id: 21,
varietal_id: 2)
Wine.create( name: "2020 Cabernet Franc",
winery_id: 21,
varietal_id: 1)
Wine.create( name: "2020 Chardonnay",
winery_id: 21,
varietal_id: 5)
Wine.create( name: "Rose",
winery_id: 21,
varietal_id: 31)
Wine.create( name: "2018 Seyval Blanc",
winery_id: 21,
varietal_id: 24)
Wine.create( name: "Riesling-Vidal",
winery_id: 21,
varietal_id: 19)
Wine.create( name: "The Founder White",
winery_id: 21,
varietal_id: 23)
Wine.create(name: "Viognier-Traminette",
winery_id: 24,
varietal_id: 29)
Wine.create(name: "Chambourcin Bleu",
winery_id: 24,
varietal_id: 4)
Wine.create(name: "Semi-Sweet Traminette",
winery_id: 24,
varietal_id: 27)
Wine.create(name: "Chardonnay",
winery_id: 24,
varietal_id: 5)
Wine.create(name: "Cabernet Franc",
winery_id: 24,
varietal_id: 1)
Wine.create(name: "Chambourcin",
winery_id: 24,
varietal_id: 4)
Wine.create(name: "Mariage Reserve",
winery_id: 24,
varietal_id: 4)
Wine.create(name: "Lobo Loco",
winery_id: 24,
varietal_id: 31)
Wine.create(name: "Blueberry Wine",
winery_id: 24,
varietal_id: 32)
Wine.create(name: "2013 Raven Rocks Red",
winery_id: 19,
varietal_id: 1)
Wine.create(name: "2014 Cabernet Sauvignon",
winery_id: 19,
varietal_id: 2)
Wine.create(name: "2014 Norton",
winery_id: 19,
varietal_id: 14)
Wine.create(name: "2014 Chardonnay",
winery_id: 19,
varietal_id: 5)
Wine.create(name: "2014 Vidal Blanc",
winery_id: 19,
varietal_id: 28)
Wine.create(name: "2014 White Nights ",
winery_id: 19,
varietal_id: 5)
Wine.create(name: "Peach Wine ",
winery_id: 19,
varietal_id: 32)
Wine.create(name: "Raspberry Wine",
winery_id: 19,
varietal_id: 32)
Wine.create(name: "Grüner Veltliner",
winery_id: 12,
varietal_id: 9)
Wine.create(name: "Vidal Blanc",
winery_id: 12,
varietal_id: 28)
Wine.create(name: "Traminette",
winery_id: 12,
varietal_id: 27)
Wine.create(name: "Catawba",
winery_id: 12,
varietal_id: 36)
Wine.create(name: "Marechal Foch",
winery_id: 12,
varietal_id: 33)
Wine.create(name: "Cabernet Franc",
winery_id: 12,
varietal_id: 1)
Wine.create(name: "Norton",
winery_id: 12,
varietal_id: 14)
Wine.create(name: "Rosé of Cabernet Franc",
winery_id: 12,
varietal_id: 1)
Wine.create( name: "Touriga 2019",
winery_id: 8,
varietal_id: 26)
Wine.create( name: "Joy Red 2020",
winery_id: 8,
varietal_id: 31)
Wine.create( name: "Viognier 2020",
winery_id: 8,
varietal_id: 29)
Wine.create( name: "Joy White 2021",
winery_id: 8,
varietal_id: 28)
Wine.create( name: "Cabernet Franc 2020",
winery_id: 8,
varietal_id: 1)
Wine.create( name: "Tavern 2016",
winery_id: 8,
varietal_id: 26)
Wine.create( name: "Ali 2017",
winery_id: 8,
varietal_id: 28)
Wine.create( name: "Fiore 2021",
winery_id: 8,
varietal_id: 1)
Wine.create( name: "Chardonnay 2020",
winery_id: 8,
varietal_id: 5)
Wine.create( name: "Meritage 2019",
winery_id: 8,
varietal_id: 11)
Wine.create( name: "Blanc de Noir",
winery_id: 8,
varietal_id: 18)
Wine.create( name: "Hop",
winery_id: 8,
varietal_id: 29)
Wine.create( name: "Scarlett",
winery_id: 8,
varietal_id: 11)
Wine.create( name: "Apple",
winery_id: 8,
varietal_id: 32)
Wine.create( name: "Peach",
winery_id: 8,
varietal_id: 32  )
Wine.create( name: "2020 Cabernet Sauvignon",
winery_id: 10,
varietal_id: 2)
Wine.create( name: "1913 Ameritage",
winery_id: 10,
varietal_id: 31)
Wine.create( name: "The Founder Red",
winery_id: 10,
varietal_id: 2)
Wine.create( name: "Cuvee de la Reine",
winery_id: 10,
varietal_id: 24)
Wine.create( name: "The Founder White",
winery_id: 10,
varietal_id: 23)
Wine.create( name: "2020 Sauvignon Blanc",
winery_id: 10,
varietal_id: 23)
Wine.create( name: "2019 Riesling",
winery_id: 10,
varietal_id: 19)
Wine.create( name: "2021 Rosé",
winery_id: 10,
varietal_id: 4)
Wine.create( name: "2020 JB Vidal Blanc",
winery_id: 10,
varietal_id: 28)
Wine.create( name: "Pearadise",
winery_id: 7,
varietal_id: 32)
Wine.create( name: "Belle Blue",
winery_id: 7,
varietal_id: 32)
Wine.create( name: "Waterfall Riesling",
winery_id: 7,
varietal_id: 32)
Wine.create( name: "Strawberry Blush",
winery_id: 7,
varietal_id: 32)
Wine.create( name: "Vogue Rogue",
winery_id: 7,
varietal_id: 31)
Wine.create( name: "Pinot Grigio",
winery_id: 7,
varietal_id: 17)
Wine.create( name: "Cherry Blush",
winery_id: 7,
varietal_id: 32)
Wine.create( name: "Cranberry Blush",
winery_id: 7,
varietal_id: 32)
Wine.create( name: "Beau Blanc",
winery_id: 7,
varietal_id: 35)
Wine.create( name: "Bon Vivant",
winery_id: 7,
varietal_id: 33)
Wine.create( name: "Syrah",
winery_id: 7,
varietal_id: 34)
Wine.create( name: "Cabernet Sauvignon",
winery_id: 7,
varietal_id: 2)
Wine.create( name: "Marquette",
winery_id: 7,
varietal_id: 34)
Wine.create( name: "Cedarburg Spice",
winery_id: 7,
varietal_id: 33)
Wine.create( name: "Gewurztraminer",
winery_id: 7,
varietal_id: 7)
Wine.create( name: "Settlement Gold",
winery_id: 7,
varietal_id: 24)
Wine.create( name: "Port Rosé",
winery_id: 7,
varietal_id: 33)
Wine.create( name: "Wollersheim Port",
winery_id: 7,
varietal_id: 33)
Wine.create( name: "Prairie Fumé",
winery_id: 7,
varietal_id: 24)
Wine.create( name: "Beaujolais Little Brother",
winery_id: 7,
varietal_id: 6)
User.create(username: "liz", id: 1)