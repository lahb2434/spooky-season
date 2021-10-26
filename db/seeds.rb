# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Elements
elements = {bat: "http://assets.stickpng.com/images/580b57fbd9996e24bc43bb3e.png",
crow: "https://snipstock.com/assets/cdn/png/1d14bdcf3a02f3fa21e762c294910825.png",
blood_splatter: "https://www.pngkit.com/png/detail/20-200208_blood-splatter-by-crazehpivotkid-on-clipart-library-transparent.png",
michael_myers: "https://www.sideshow.com/storage/product-images/100398/michael-myers-deluxe_halloween_silo.png",
pumpkin: "http://assets.stickpng.com/images/580b57fcd9996e24bc43c3db.png",
chucky: "https://static.wikia.nocookie.net/vsdebating/images/0/0d/ED2419B3-90F5-4F40-8A90-107FE3A8A5C1.png/revision/latest/scale-to-width-down/392?cb=20190803151701",
freddy_krueger: "https://www.sideshow.com/storage/product-images/100359/freddy-krueger_nightmare-on-elm-street_silo.png",
jason_vhoores: "https://www.sideshow.com/storage/product-images/100360/jason-voorhees_friday-the-13th_silo.png",
leatherface: "https://www.sideshow.com/storage/product-images/100399/leatherface_texas-chainsaw-massacre_silo.png",
ghost_girl: "https://snipstock.com/assets/cdn/png/2943a4bab439a3542aefc8d1cc6c551b.png",
full_moon: "https://snipstock.com/assets/cdn/png/ca380a688d046ae22386834857e034bd.png",
black_spider: "http://assets.stickpng.com/images/580b57fbd9996e24bc43bc73.png",
skull: "https://snipstock.com/assets/cdn/png/8b5863fb2ac93d4914856d9dc669590e.png",
# happy halloween banners
happy_halloween_banner_1: "https://gallery.yopriceville.com/var/resizes/Free-Clipart-Pictures/Halloween-PNG-Pictures/Happy_Halloween_PNG_Clip_Art_Image-41255765.png?m=1537570551",
happy_halloween_banner_2: "https://gallery.yopriceville.com/var/resizes/Free-Clipart-Pictures/Halloween-PNG-Pictures/Bloody_Happy_Halloween_PNG_Clipart_Picture.png?m=1507172109",
happy_halloween_banner_3: "https://gallery.yopriceville.com/var/resizes/Free-Clipart-Pictures/Halloween-PNG-Pictures/Happy_Halloween_PNG_Clip_Art_Image.png?m=1533423107"}

# background image
backgrounds = {haunted_house: "https://www.washingtonian.com/wp-content/uploads/2017/10/haunted-house-994x559.jpg",
cemetery: "https://i.pinimg.com/originals/c7/1d/a6/c71da6ee5a9259bfad257fa43c1d4b28.jpg",
catacombs: "https://assets.teenvogue.com/photos/5941558a1d23bb53d96d95e7/master/pass/catacombs.jpg"}


# create usable card elements
elements.each{|key, value| Element.create(name: key, image_url: value)}

backgrounds.each{|key, value| Background.create(name: key, image_url: value)} 
