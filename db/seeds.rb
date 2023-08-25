# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts 'Destroying all'
User.destroy_all
Booking.destroy_all
Friend.destroy_all
puts 'Done!'


User.create!(email: 'toto@gmail.com', password: 'azerty', name: 'Babouuu', user_name: 'MyLittleApple', postal_address: "12 rue des Bonnes Vignes")

# User.create!(email: 'toto@gmail.com', password: 'azerty', user_name: "Alphonse", postal_address: "12 rue des Bonnes Vignes")
# User.create!(email: 'roger@gmail.com', password: 'azerty', user_name: "roger", postal_address: "7 rue des Bonnes Vignes")
# User.create!(email: 'alpha@gmail.com', password: 'azerty', user_name: "alpha", postal_address: "10 rue des Bonnes Vignes")
# User.create!(email: 'romeo@gmail.com', password: 'azerty', user_name: "Roméo", postal_address: "25 rue des Bonnes Vignes")
# User.create!(email: 'tango@gmail.com', password: 'azerty', user_name: "November", postal_address: "19 rue des Bonnes Vignes")
# User.create!(email: 'november@gmail.com', password: 'azerty', user_name: "Alphonse", postal_address: "18 rue des Bonnes Vignes")

CATEGORY = %w[Sympathetic Alcoholic Cool Mean Grumpy Sleepy Flirty Joyful Copilot Mysterious Sexy Attachiant Mellow Vicious]
puts 'Creating 10 fake friends...'

ryan = Friend.create!(
  name: "Ryan",
  category: "Sexy",
  price: rand(0..1000),
  postal_address: "14 avenue général de Gaulle, Lille",
  description: "Dans les magasins de lingerie, on ne voit pas de calendriers avec des photos de garage.",
  user: User.all.sample
)

file = File.open("app/assets/images/diryan.jpg")
ryan.photo.attach(io: file, filename: "#{ryan.name.downcase}.png", content_type: "image/png")
ryan.save!

ana = Friend.create!(
  name: "Ana",
  category: "Sexy",
  price: rand(0..1000),
  postal_address: "14 avenue général de Gaulle, Lyon",
  description: "Je crois au moment. S'il n'y a pas le moment, à ce moment-là, il faut arriver à ce moment-là, au moment qu'on veut.",
  user: User.all.sample
)

file = File.open("app/assets/images/diana.jpg")
ana.photo.attach(io: file, filename: "#{ana.name.downcase}.png", content_type: "image/png")
ana.save!

scarlett = Friend.create!(
  name: "Scarlett",
  category: "Sexy",
  price: rand(0..1000),
  postal_address: "5 rue Blondeau, Boulogne Billancourt",
  description: "Entre toi et moi il y a un produit qui s'appelle un produit, et c'est un produit qui s'appelle l'oxygène, alors si tu fais ça (inspiration/expiration) comme ça, tu vis, mais si je tue l'oxygène comme sur la lune, tu meurs !!",
  user: User.all.sample
)

file = File.open("app/assets/images/dijohan.jpg")
scarlett.photo.attach(io: file, filename: "#{scarlett.name.downcase}.png", content_type: "image/png")
scarlett.save!


jessica = Friend.create!(
  name: "Jessica",
  category: "Sexy",
  price: rand(0..1000),
  postal_address: "14 avenue général de Gaulle, Paris",
  description: "Y a des gens qui n'ont pas réussi parce qu'ils ne sont pas aware, ils ne sont pas au courant. Ils ne sont pas à l'attention de savoir qu'ils existent. Les pauvres, ils savent pas. Il faut réveiller les gens. C'est-à-dire qu'y a des gens qui font leur travail, qui font leurs études, ils ont un diplôme, ils sont au contact tout ça. Tu as un rhume et tu fais toujours snif. Faut que tu te mouches. Tu veux un mouchoir ? Alors y a des gens comme ça qui ne sont pas aware.",
  user: User.all.sample
)
file = File.open("app/assets/images/dialba.jpg")
jessica.photo.attach(io: file, filename: "#{jessica.name.downcase}.png", content_type: "image/png")
jessica.save!

jake = Friend.create!(
  name: "Jake",
  category: "Sexy",
  price: rand(0..1000),
  postal_address: "14 avenue général de Gaulle, Nantes",
  description: "1 + 1 égale 1... On parle une... ou un quand on est ensemble... c'est l'amour... mais dans notre monde à 1 + 1 = 2, 2 + 2= 4 comme ça devient selfish, on prend du pognon et on partage pas... Mais si 1 + 1 = 1 ou 1 + 1 = 11, là c'est beau !",
  user: User.all.sample
)

file = File.open("app/assets/images/dijake.jpg")
jake.photo.attach(io: file, filename: "#{jake.name.downcase}.png", content_type: "image/png")
jake.save!

rock = Friend.create!(
  name: "The Rock",
  category: "Sexy",
  price: rand(0..1000),
  postal_address: "14 avenue général de Gaulle, Clermont-Ferrand",
  description: "Quand tu montes dans un ascenseur... tu penses. A des tas de choses; à des créations, à des gens, à des souvenirs... Donc on est jamais seul spirituellement! Mais physiquement, dans l'enveloppe, si je suis seul... eh bien... je suis là. Et je reste là. Jusqu à ce que les portes souvrent... Et puis je commence à marcher. Je bouge mon enveloppe. Vers ma mission de tous les jours...",
  user: User.all.sample
)

file = File.open("app/assets/images/dirock.jpg")
rock.photo.attach(io: file, filename: "#{rock.name.downcase}.png", content_type: "image/png")
rock.save!


jennifer = Friend.create!(
  name: "Jennifer",
  category: "Copilot",
  price: rand(0..1000),
  postal_address: "14 avenue général de Gaulle, Marseille",
  description: "Moi, Adam et Eve, j'y crois plus tu vois, parce que je suis pas un idiot : la pomme, ça peut pas être mauvais, c'est plein de pectine..",
  user: User.all.sample
)

file = File.open("app/assets/images/diconnelly.jpg")
jennifer.photo.attach(io: file, filename: "#{jennifer.name.downcase}.png", content_type: "image/png")
jennifer.save!

childish = Friend.create!(
  name: "Childish",
  category: "Copilot",
  price: rand(0..1000),
  postal_address: "14 avenue général de Gaulle, Aulnay-sous-Bois",
  description: "La drogue, c'est comme quand tu close your eyes et que tu traverses la rue.",
  user: User.all.sample
)
file = File.open("app/assets/images/digambino.jpg")
childish.photo.attach(io: file, filename: "#{childish.name.downcase}.png", content_type: "image/png")
childish.save!


leonardo = Friend.create!(
  name: "leonardo",
  category: "Alcoholic",
  price: rand(0..1000),
  postal_address: "14 avenue général de Gaulle, Bordeaux",
  description: "Quand j'étais jeune, j'étais très con. Je suis resté très jeune",
  user: User.all.sample
)

file = File.open("app/assets/images/dicap.jpg")
leonardo.photo.attach(io: file, filename: "#{leonardo.name.downcase}.png", content_type: "image/png")
leonardo.save!

margot = Friend.create!(
  name: "Margot",
  category: "Alcoholic",
  price: rand(0..1000),
  postal_address: "14 avenue général de Gaulle, Orléans",
  description: "L'être humain, en général, dans la vie, réacte. On réacte, c'est à dire qu'on fait ce qu'on est supposé faire. Travailler, manger... J'm'excuse de l'expression; chier, mais je trouve qu'un être humain doit créer.",
  user: User.all.sample
)

file = File.open("app/assets/images/dirobbie.jpg")
margot.photo.attach(io: file, filename: "#{margot.name.downcase}.png", content_type: "image/png")
margot.save!

taylor = Friend.create!(
  name: "Taylor",
  category: "Alcoholic",
  price: rand(0..1000),
  postal_address: "14 avenue général de Gaulle, Mont-de-Marsan",
  description: "Et grâce à ma propre vérité (dont je n'ai pas encore la réponse de la vérité), je peux te parler d'une manière plus sophistiquée. Il y a un an, je t'aurais parlé de mes muscles. De combien je mange le matin, combien je suis beau et combien je suis fort, je suis le meilleur... Mais en vérité, il n'y a pas de meilleur! En vérité, il y a chacun soi-même!",
  user: User.all.sample
)

file = File.open("app/assets/images/ditaylor.jpg")
taylor.photo.attach(io: file, filename: "#{taylor.name.downcase}.png", content_type: "image/png")
taylor.save!

arnold = Friend.create!(
  name: "Shwarzy",
  category: "Alcoholic",
  price: rand(0..1000),
  postal_address: "14 avenue général de Gaulle, La Rochelle",
  description: "Oh non arrêtez les clapements, merde à la fin, arrêtez ces histoires ! On n'est pas du show-bizness, okay ?",
  user: User.all.sample
)

file = File.open("app/assets/images/dishar.jpg")
arnold.photo.attach(io: file, filename: "#{arnold.name.downcase}.png", content_type: "image/png")
arnold.save!


will = Friend.create!(
  name: "Will",
  category: "Mysterious",
  price: rand(0..1000),
  postal_address: "14 avenue général de Gaulle, Rennes",
  description: "Le Cycle... le cycle du cosmos dans la vie... c'est une grande roue. Qui est faite de... choses, de moments, de feelings... et la vérité, c'est qu'il n'y a pas de vérité; la vérité, c'est qu'il faut trouver sa propre vérité. Ma vérité à moi? Comment veux-tu que je te parle de cette manière? Tu m'aurais parlé il y a cinq ans, ou bien il y a trois ans, ou il y a six mois! Ou hier... ou demain... Tu m'aurais parlé de cette manière, j'aurais pas pu te répondre de cette façon.",
  user: User.all.sample
)

file = File.open("app/assets/images/dismith.jpg")
will.photo.attach(io: file, filename: "#{will.name.downcase}.png", content_type: "image/png")
will.save!


tessa = Friend.create!(
  name: "Tessa",
  category: "Joyful",
  price: rand(0..1000),
  postal_address: "14 avenue général de Gaulle, Biarritz",
  description: "Et puis, il y a la mort; et la mort n'existe pas. La mort, c'est la seconde dimension; la vraie dimension de la vie, c'est l'univers! Et c'est là où on revient, soit dans la même enveloppe, soit dans quelque chose d'autre dans laquelle on a envie de revenir et... on progresse. Le progrès sur la Vérité. Et je sais que même si tu comprends pas ce que je dis, tu le comprends.",
  user: User.all.sample
)


file = File.open("app/assets/images/ditessa.jpg")
tessa.photo.attach(io: file, filename: "#{tessa.name.downcase}.png", content_type: "image/png")
tessa.save!


gerard = Friend.create!(
  name: "Gerard",
  category: "Mellow",
  price: rand(0..1000),
  postal_address: "14 avenue général de Gaulle, Montreuil",
  description: "Quand on sort d'un placenta à l'age de 42 ans et quand on a l'intelligence, le brain, le computer, la mémoire d'un 40 ans mais qui est vide, elle doit se remplir de jour en jour, elle doit sponging, elle doit elle doit prendre comme une éponge, elle doit elle doit... ok ?",
  user: User.all.sample
)

file = File.open("app/assets/images/dipardieu.jpg")
gerard.photo.attach(io: file, filename: "#{gerard.name.downcase}.png", content_type: "image/png")
gerard.save!


allan = Friend.create!(
  name: "Allan",
  category: "Mellow",
  price: rand(0..1000),
  postal_address: "14 avenue général de Gaulle, Villeparisis",
  description: "Je suis fasciné par l'air. Si on enlevait l'air du ciel, tous les oiseaux tomberaient par terre....Et les avions aussi.... En même temps l'air tu peux pas le toucher...ça existe et ça existe pas...Ça nourrit l'homme sans qu'il ait faim...It's magic...L'air c'est beau en même temps tu peux pas le voir, c'est doux et tu peux pas le toucher.....L'air c'est un peu comme mon cerveau...",
  user: User.all.sample
)

file = File.open("app/assets/images/diallan.jpg")
allan.photo.attach(io: file, filename: "#{allan.name.downcase}.png", content_type: "image/png")
allan.save!

puts 'Finished!'
