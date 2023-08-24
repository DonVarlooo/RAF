# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# User.create!(email: 'toto@gmail.com', password: 'azerty', user_name: "Alphonse", postal_address: "12 rue des Bonnes Vignes")
# User.create!(email: 'roger@gmail.com', password: 'azerty', user_name: "roger", postal_address: "7 rue des Bonnes Vignes")
# User.create!(email: 'alpha@gmail.com', password: 'azerty', user_name: "alpha", postal_address: "10 rue des Bonnes Vignes")
# User.create!(email: 'romeo@gmail.com', password: 'azerty', user_name: "Roméo", postal_address: "25 rue des Bonnes Vignes")
# User.create!(email: 'tango@gmail.com', password: 'azerty', user_name: "November", postal_address: "19 rue des Bonnes Vignes")
# User.create!(email: 'november@gmail.com', password: 'azerty', user_name: "Alphonse", postal_address: "18 rue des Bonnes Vignes")

CATEGORY = %w[sympa cool mechant grincheux dormeur]
puts 'Creating 10 fake friends...'

Friend.create!(
  name: "Jessica",
  category: CATEGORY.sample,
  price: rand(0..1000),
  photo: "/assets/images/dialba.jpg",
  postal_address: "14 avenue général de Gaulle, Paris",
  description: "Y a des gens qui n'ont pas réussi parce qu'ils ne sont pas aware, ils ne sont pas au courant. Ils ne sont pas à l'attention de savoir qu'ils existent. Les pauvres, ils savent pas. Il faut réveiller les gens. C'est-à-dire qu'y a des gens qui font leur travail, qui font leurs études, ils ont un diplôme, ils sont au contact tout ça. Tu as un rhume et tu fais toujours snif. Faut que tu te mouches. Tu veux un mouchoir ? Alors y a des gens comme ça qui ne sont pas aware.",
  user_id: 10
)









puts 'Finished!'
