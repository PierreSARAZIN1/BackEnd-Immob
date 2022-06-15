# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.destroy_all
Advert.destroy_all

10.times do |r|
  user = User.create!(
    email: "a#{r}@yopmail.com",
    password: 'aaaaaa'
    );

end

house_url = [
"https://archello.s3.eu-central-1.amazonaws.com/images/2018/10/11/Contemporary-Modern-House-Design-6.1539270983.8601.jpg",
"https://archello.s3.eu-central-1.amazonaws.com/images/2019/04/10/modern-house-in-moscow-1.1554930809.2534.jpg",
"https://besetriyeonline.com/wp-content/uploads/2020/12/Contemporary-Modern-House-Design-4.1539270658.1017.jpg",
"https://archello.s3.eu-central-1.amazonaws.com/images/2018/10/11/Contemporary-Modern-House-Design-2.1539270605.9331.jpg",
"https://images8.alphacoders.com/546/546046.jpg",
"https://pix10.agoda.net/hotelImages/9065853/-1/142d78192fda46d5b58e14c9d3f2fe51.jpg",
"https://previews.123rf.com/images/donogl/donogl1706/donogl170600159/79993221-old-creepy-dark-abandoned-destructive-dirty-house-broken-windows.jpg",
"https://thumbs.dreamstime.com/z/maison-terrible-avec-des-fant-mes-pour-des-histoires-d-horreur-presque-d%C3%A9truit-75288921.jpg",
"https://www.grandsudinsolite.fr/client/gfx/photos/produit/103-maison-ascain-2_11527.jpg"

]

appart_url = [
  "https://www.jerevedunemaison.com/hubfs/Haussmannien%20angle.jpg",
"https://cache.marieclaire.fr/data/photo/w1000_ci/5n/salon-salle-a-manger-haussmannien.jpg",
"https://www.mon-logement-etudiant.fr/wp-content/uploads/2020/08/studio-etudiant.jpg",
"https://www.mon-logement-etudiant.fr/wp-content/uploads/2020/07/26339649496_3c8d9a4a1e_b-1023x641.jpg",
"https://thumbs.dreamstime.com/b/vieil-appartement-russie-moscou-h%C3%A9bergement-l-o%C3%B9-la-vie-de-grand-m%C3%A8re-vue-plate-du-hideuse-int%C3%A9rieur-style-r%C3%A9tro-vieux-en-198733369.jpg",
"https://www.francetvinfo.fr/pictures/jOhhNWthAGFU59zJu_MjsnUxqdM/1500x843/2013/05/09/tumblr_mm8a19gDsY1spj6p2o1_1280.jpg",
"https://www.ipnoze.com/wordpress/wp-content/uploads/2019/02/mauvaises-photos-immobilier-fb-01.jpg",
"https://globalvoices.org/wp-content/uploads/2016/09/benny-lam-800x533.jpg",
"https://cap.img.pmdstatic.net/fit/http.3A.2F.2Fprd2-bone-image.2Es3-website-eu-west-1.2Eamazonaws.2Ecom.2Fcap.2F2018.2F01.2F04.2F787fa3cd-016a-42e1-8d20-9ca9a7083345.2Ejpeg/1200x630/background-color/ffffff/quality/70/cr/wqkgSmFtZXMgTGF3IEN5YmVydGVjdHVyZSBJbnRlcm5hdGlvbmFsIC8gQ0FQSVRBTA%3D%3D/opod-des-mini-appartements-dans-des-tuyaux-pour-contrer-les-prix-fous-de-hong-kong-1263628.jpg"
]



10.times do |r|
  advert = Advert.create!(
    title: "Maison à vendre!",
    price: rand(12..200)*10000,
    description: "Maison de fou à vendre, c'est une aubaine!",
    category: "House",
    room: rand(3..666),
    bathroom: rand(2..75),
    area: rand(75..600),
    address: Faker::Address.street_address,
    city: Faker::Address.city,
    zip_code: Faker::Address.zip_code,
    garden: [true, false].sample,
    garage: [true, false].sample,
    pictures_url: [house_url.sample,"https://www.cnewyork.net/wp-content/uploads/2015/11/BN-LH371_1119TE_M_20151116181334.jpg","https://www.cnewyork.net/wp-content/uploads/2015/11/BN-LH358_1119TE_M_20151116181255.jpg"],
    user_id: User.all.sample.id
    );

end

10.times do |r|
  advert = Advert.create!(
    title: "Appart' à vendre!",
    price: rand(8..120)*10000,    
    description: "Appart' de fou à vendre, c'est une aubaine!",
    category: "Appartment",
    room: rand(1..6),
    bathroom: rand(1..4),
    area: rand(25..300),
    address: Faker::Address.street_address,
    city: Faker::Address.city,
    zip_code: Faker::Address.zip_code,
    garden: [true, false].sample,
    garage: [true, false].sample,
    pictures_url: [appart_url.sample,"https://www.cnewyork.net/wp-content/uploads/2015/11/BN-LH371_1119TE_M_20151116181334.jpg","https://www.cnewyork.net/wp-content/uploads/2015/11/BN-LH358_1119TE_M_20151116181255.jpg"],
    user_id: User.all.sample.id
    );

end