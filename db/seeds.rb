# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "cleaning database"

Room.destroy_all

puts "Creating 3 rooms"
standard = Room.new(
  name: "Chambre standard",
  price: 300,
  capacity: 2,
  photo: "http://www.juvet.com/prod_images/doc_127_1.jpg.ashx?quality=60"
)
standard.save!

superieur = Room.new(
  name: "Chambre superieur",
  price: 350,
  capacity: 2,
  photo: "http://homeli.co.uk/wp-content/uploads/2015/01/Juvet-Spa-by-the-River-Valld%C3%B8la.jpg"
)
superieur.save!

family = Room.new(
  name: "Chambre familiale",
  price: 380,
  capacity: 4,
  photo: "https://kyvos-53.webself.net/file/si684429/Cube-fi10991097x1000.png"
)
family.save!

puts "#{Room.all}"
