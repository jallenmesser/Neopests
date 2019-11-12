# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all 
Pest.destroy_all 

puts "creating seeds"
user1 = User.find_or_create_by(username: "Ritricia", password: "Cans4Lyfe", email: "ratricia@gcan.com")

pest1 = Pest.find_or_create_by(name: "Pongo", species: "squirrel", color: "pink", home: "Central Park", user_id: user1.id)
puts "you've been seeded"