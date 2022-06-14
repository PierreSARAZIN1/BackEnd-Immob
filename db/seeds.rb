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

10.times do |r|
  advert = Advert.create!(
    title: "Maison à vendre!",
    price: 1000000,
    description: "Maison de fou à vendre, c'est une aubaine!",
    category: "House",
    room: 4,
    bathroom: 1,
    area: 90,
    address: Faker::Address.street_address,
    city: Faker::Address.city,
    zip_code: Faker::Address.zip_code,
    garden: true,
    garage: true,
    user_id: User.all.sample.id
    );

end