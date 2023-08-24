# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Friend.destroy_all

# User.create!(email: 'toto@gmail.com', password: 'azerty', user_name: "Alphonse", postal_address: "12 rue des Bonnes Vignes")
# User.create!(email: 'roger@gmail.com', password: 'azerty', user_name: "roger", postal_address: "7 rue des Bonnes Vignes")
# User.create!(email: 'alpha@gmail.com', password: 'azerty', user_name: "alpha", postal_address: "10 rue des Bonnes Vignes")
# User.create!(email: 'romeo@gmail.com', password: 'azerty', user_name: "Roméo", postal_address: "25 rue des Bonnes Vignes")
# User.create!(email: 'tango@gmail.com', password: 'azerty', user_name: "November", postal_address: "19 rue des Bonnes Vignes")
# User.create!(email: 'november@gmail.com', password: 'azerty', user_name: "Alphonse", postal_address: "18 rue des Bonnes Vignes")

CATEGORY = %w[Sympathique Alcoolique Cool Méchant Grincheux Dormeur Pointeur Joyeux Copilote Mystérieux Dragueur Attachiant Moelleux Vicieux]
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

Friend.create!(
  name: "Allan",
  category: CATEGORY.sample,
  price: rand(0..1000),
  photo: "/assets/images/diallan.jpg",
  postal_address: "14 avenue général de Gaulle, Villeparisis",
  description: "Je suis fasciné par l'air. Si on enlevait l'air du ciel, tous les oiseaux tomberaient par terre....Et les avions aussi.... En même temps l'air tu peux pas le toucher...ça existe et ça existe pas...Ça nourrit l'homme sans qu'il ait faim...It's magic...L'air c'est beau en même temps tu peux pas le voir, c'est doux et tu peux pas le toucher.....L'air c'est un peu comme mon cerveau...",
  user_id: 10
)

Friend.create!(
  name: "Ana",
  category: CATEGORY.sample,
  price: rand(0..1000),
  photo: "/assets/images/diana.jpg",
  postal_address: "14 avenue général de Gaulle, Paris",
  description: "Je crois au moment. S'il n'y a pas le moment, à ce moment-là, il faut arriver à ce moment-là, au moment qu'on veut.",
  user_id: 10
)

Friend.create!(
  name: "Ana",
  category: CATEGORY.sample,
  price: rand(0..1000),
  photo: "/assets/images/diana.jpg",
  postal_address: "14 avenue général de Gaulle, Lyon",
  description: "Quand j'étais jeune, j'étais très con. Je suis resté très jeune",
  user_id: 10
)

Friend.create!(
  name: "Leonardo",
  category: CATEGORY.sample,
  price: rand(0..1000),
  photo: "/assets/images/dicap.jpg",
  postal_address: "14 avenue général de Gaulle, Bordeaux",
  description: "Quand j'étais jeune, j'étais très con. Je suis resté très jeune",
  user_id: 10
)

Friend.create!(
  name: "Jennifer",
  category: CATEGORY.sample,
  price: rand(0..1000),
  photo: "/assets/images/diconnelly.jpg",
  postal_address: "14 avenue général de Gaulle, Marseille",
  description: "Moi, Adam et Eve, j'y crois plus tu vois, parce que je suis pas un idiot : la pomme, ça peut pas être mauvais, c'est plein de pectine..",
  user_id: 10
)

Friend.create!(
  name: "Childish",
  category: CATEGORY.sample,
  price: rand(0..1000),
  photo: "/assets/images/digambino.jpg",
  postal_address: "14 avenue général de Gaulle, Aulnay-sous-Bois",
  description: "La drogue, c'est comme quand tu close your eyes et que tu traverses la rue.",
  user_id: 10
)

Friend.create!(
  name: "Jake",
  category: CATEGORY.sample,
  price: rand(0..1000),
  photo: "/assets/images/dijake.jpg",
  postal_address: "14 avenue général de Gaulle, Nantes",
  description: "1 + 1 égale 1... On parle une... ou un quand on est ensemble... c'est l'amour... mais dans notre monde à 1 + 1 = 2, 2 + 2= 4 comme ça devient selfish, on prend du pognon et on partage pas... Mais si 1 + 1 = 1 ou 1 + 1 = 11, là c'est beau !",
  user_id: 10
)

Friend.create!(
  name: "Scarlett",
  category: CATEGORY.sample,
  price: rand(0..1000),
  photo: "/assets/images/dijohan.jpg",
  postal_address: "14 avenue général de Gaulle, Boulogne",
  description: "Entre toi et moi il y a un produit qui s'appelle un produit, et c'est un produit qui s'appelle l'oxygène, alors si tu fais ça (inspiration/expiration) comme ça, tu vis, mais si je tue l'oxygène comme sur la lune, tu meurs !!",
  user_id: 10
)

Friend.create!(
  name: "Gerard",
  category: CATEGORY.sample,
  price: rand(0..1000),
  photo: "/assets/images/dipardieu.jpg",
  postal_address: "14 avenue général de Gaulle, Montreuil",
  description: "Quand on sort d'un placenta à l'age de 42 ans et quand on a l'intelligence, le brain, le computer, la mémoire d'un 40 ans mais qui est vide, elle doit se remplir de jour en jour, elle doit sponging, elle doit elle doit prendre comme une éponge, elle doit elle doit... ok ?",
  user_id: 10
)

Friend.create!(
  name: "Margot",
  category: CATEGORY.sample,
  price: rand(0..1000),
  photo: "/assets/images/dirobbie.jpg",
  postal_address: "14 avenue général de Gaulle, Orléans",
  description: "L'être humain, en général, dans la vie, réacte. On réacte, c'est à dire qu'on fait ce qu'on est supposé faire. Travailler, manger... J'm'excuse de l'expression; chier, mais je trouve qu'un être humain doit créer.",
  user_id: 10
)

Friend.create!(
  name: "The Rock",
  category: CATEGORY.sample,
  price: rand(0..1000),
  photo: "/assets/images/dirock.jpg",
  postal_address: "14 avenue général de Gaulle, Clermont-Ferrand",
  description: "Quand tu montes dans un ascenseur... tu penses. A des tas de choses; à des créations, à des gens, à des souvenirs... Donc on est jamais seul spirituellement! Mais physiquement, dans l'enveloppe, si je suis seul... eh bien... je suis là. Et je reste là. Jusqu à ce que les portes souvrent... Et puis je commence à marcher. Je bouge mon enveloppe. Vers ma mission de tous les jours...",
  user_id: 10
)



Friend.create!(
  name: "Ryan",
  category: CATEGORY.sample,
  price: rand(0..1000),
  photo: "/assets/images/diryan.jpg",
  postal_address: "14 avenue général de Gaulle, Lille",
  description: "Dans les magasins de lingerie, on ne voit pas de calendriers avec des photos de garage.",
  user_id: 10
)

Friend.create!(
  name: "Shawrzy",
  category: CATEGORY.sample,
  price: rand(0..1000),
  photo: "/assets/images/dishar.jpg",
  postal_address: "14 avenue général de Gaulle, La Rochelle",
  description: "Oh non arrêtez les clapements, merde à la fin, arrêtez ces histoires ! On n'est pas du show-bizness, okay ?",
  user_id: 10
)


Friend.create!(
  name: "Will",
  category: CATEGORY.sample,
  price: rand(0..1000),
  photo: "/assets/images/dismith.jpg",
  postal_address: "14 avenue général de Gaulle, Rennes",
  description: "Le Cycle... le cycle du cosmos dans la vie... c'est une grande roue. Qui est faite de... choses, de moments, de feelings... et la vérité, c'est qu'il n'y a pas de vérité; la vérité, c'est qu'il faut trouver sa propre vérité. Ma vérité à moi? Comment veux-tu que je te parle de cette manière? Tu m'aurais parlé il y a cinq ans, ou bien il y a trois ans, ou il y a six mois! Ou hier... ou demain... Tu m'aurais parlé de cette manière, j'aurais pas pu te répondre de cette façon.",
  user_id: 10
)

Friend.create!(
  name: "Taylor",
  category: CATEGORY.sample,
  price: rand(0..1000),
  photo: "/assets/images/ditaylor.jpg",
  postal_address: "14 avenue général de Gaulle, Mont-de-Marsan",
  description: "Et grâce à ma propre vérité (dont je n'ai pas encore la réponse de la vérité), je peux te parler d'une manière plus sophistiquée. Il y a un an, je t'aurais parlé de mes muscles. De combien je mange le matin, combien je suis beau et combien je suis fort, je suis le meilleur... Mais en vérité, il n'y a pas de meilleur! En vérité, il y a chacun soi-même!",
  user_id: 10
)

Friend.create!(
  name: "Tessa",
  category: CATEGORY.sample,
  price: rand(0..1000),
  photo: "/assets/images/ditessa.jpg",
  postal_address: "14 avenue général de Gaulle, Biarritz",
  description: "Et puis, il y a la mort; et la mort n'existe pas. La mort, c'est la seconde dimension; la vraie dimension de la vie, c'est l'univers! Et c'est là où on revient, soit dans la même enveloppe, soit dans quelque chose d'autre dans laquelle on a envie de revenir et... on progresse. Le progrès sur la Vérité. Et je sais que même si tu comprends pas ce que je dis, tu le comprends.",
  user_id: 10
)

puts 'Finished!'
