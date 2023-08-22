# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create!(email: 'toto@gmail.com', password: 'azerty', user_name: "Alphonse", postal_address: "12 rue des Bonnes Vignes")
User.create!(email: 'roger@gmail.com', password: 'azerty', user_name: "roger", postal_address: "7 rue des Bonnes Vignes")
User.create!(email: 'alpha@gmail.com', password: 'azerty', user_name: "alpha", postal_address: "10 rue des Bonnes Vignes")
User.create!(email: 'romeo@gmail.com', password: 'azerty', user_name: "Roméo", postal_address: "25 rue des Bonnes Vignes")
User.create!(email: 'tango@gmail.com', password: 'azerty', user_name: "November", postal_address: "19 rue des Bonnes Vignes")
User.create!(email: 'november@gmail.com', password: 'azerty', user_name: "Alphonse", postal_address: "18 rue des Bonnes Vignes")

CATEGORY = %w[sympa cool mechant grincheux dormeur]
puts 'Creating 10 fake friends...'

Friend.create!(
  name: "Paul",
  category: CATEGORY.sample,
  price: rand(0..1000),
  user_id: 1
)
Friend.create!(
  name: "Adrien",
  category: CATEGORY.sample,
  price: rand(0..1000),
  user_id: 2
)
Friend.create!(
  name: "Jérôme",
  category: CATEGORY.sample,
  price: rand(0..1000),
  user_id: 3
)
Friend.create!(
  name: "Baptiste",
  category: CATEGORY.sample,
  price: rand(0..1000),
  user_id: 4
)
Friend.create!(
  name: "Hugo",
  category: CATEGORY.sample,
  price: rand(0..1000),
  user_id: 5
)
Friend.create!(
  name: "Claire",
  category: CATEGORY.sample,
  price: rand(0..1000),
  user_id: 5
)
Friend.create!(
  name: "Pauline",
  category: CATEGORY.sample,
  price: rand(0..1000),
  user_id: 4
)
Friend.create!(
  name: "Léa",
  category: CATEGORY.sample,
  price: rand(0..1000),
  user_id: 3
)
Friend.create!(
  name: "Laura",
  category: CATEGORY.sample,
  price: rand(0..1000),
  user_id: 2
)
Friend.create!(
  name: "Cassandra",
  category: CATEGORY.sample,
  price: rand(0..1000),
  user_id: 1
)


puts 'Finished!'
