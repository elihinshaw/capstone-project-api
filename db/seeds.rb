# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# movies_seeds.rb

movies = [
  {
    name: "The Shawshank Redemption",
    description: "Two imprisoned men bond over several years, finding solace and eventual redemption through acts of common decency.",
    image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQjzGdfg4HcAI-yCi9gXofi7JLT8T8vgcufIfTyTxqL4_3UUiNJ",
    category: "Drama",
  },
  {
    name: "The Godfather",
    description: "The aging patriarch of an organized crime dynasty transfers control of his clandestine empire to his reluctant son.",
    image: "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcQ6EAZYpFPv-j-msWE7uFUueby2qiH_lz67ryBOJ41kg4nKHJ6y",
    category: "Crime",
  },
  {
    name: "Pulp Fiction",
    description: "The lives of two mob hitmen, a boxer, a gangster and his wife, and a pair of diner bandits intertwine in four tales of violence and redemption.",
    image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTlNRzwKlBbE6QGNyvO0rGoruofKdYgGK9MeozNwRdWmnDMf8xI",
    category: "Crime",
  },
  {
    name: "The Dark Knight",
    description: "When the menace known as The Joker emerges from his mysterious past, he wreaks havoc and chaos on the people of Gotham. Batman must accept one of the greatest psychological and physical tests of his ability to fight injustice.",
    image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTOH1Z3WEv-NS_ahc7NSQRz1LTh813Z6sMmI_E7d1_FYpQd0MxY",
    category: "Action",
  },
  {
    name: "Fight Club",
    description: "An insomniac office worker and a devil-may-care soapmaker form an underground fight club that evolves into something much, much more.",
    image: "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcSor8IGjk4o_CD4Tc6I4JQL3AFKtSpaMr_YvsbWmZ4kfNqiORHO",
    category: "Drama",
  },
  {
    name: "Forrest Gump",
    description: "The presidencies of Kennedy and Johnson, the events of Vietnam, Watergate, and other historical events unfold through the perspective of an Alabama man with an IQ of 75, whose only desire is to be reunited with his childhood sweetheart.",
    image: "https://example.com/forrest-gump.jpg",
    category: "Drama",
  },
  {
    name: "Inception",
    description: "A thief who steals corporate secrets through the use of dream-sharing technology is given the inverse task of planting an idea into the mind of a C.E.O.",
    image: "https://example.com/inception.jpg",
    category: "Sci-Fi",
  },
  {
    name: "The Matrix",
    description: "A computer hacker learns from mysterious rebels about the true nature of his reality and his role in the war against its controllers.",
    image: "https://example.com/the-matrix.jpg",
    category: "Sci-Fi",
  },
  {
    name: "The Lord of the Rings: The Fellowship of the Ring",
    description: "A meek Hobbit from the Shire and eight companions set out on a journey to destroy the powerful One Ring and save Middle-earth from the Dark Lord Sauron.",
    image: "https://example.com/the-lord-of-the-rings.jpg",
    category: "Fantasy",
  },
  {
    name: "Goodfellas",
    description: "The story of Henry Hill and his life in the mob, covering his relationship with his wife Karen Hill and his mob partners Jimmy Conway and Tommy DeVito in the Italian-American crime syndicate.",
    image: "https://example.com/goodfellas.jpg",
    category: "Crime",
  },
  {
    name: "Schindler's List",
    description: "In German-occupied Poland during World War II, industrialist Oskar Schindler gradually becomes concerned for his Jewish workforce after witnessing their persecution by the Nazis.",
    image: "https://example.com/schindlers-list.jpg",
    category: "Drama",
  },
  {
    name: "The Silence of the Lambs",
    description: "A young FBI cadet must receive the help of an incarcerated and manipulative cannibal killer to help catch another serial killer, a madman who skins his victims.",
    image: "https://example.com/the-silence-of-the-lambs.jpg",
    category: "Thriller",
  },
  {
    name: "Star Wars: Episode V - The Empire Strikes Back",
    description: "After the Rebels are brutally overpowered by the Empire on the ice planet Hoth, Luke Skywalker begins Jedi training with Yoda, while his friends are pursued by Darth Vader.",
    image: "https://example.com/empire-strikes-back.jpg",
    category: "Sci-Fi",
  },
  {
    name: "The Lion King",
    description: "Lion prince Simba and his father are targeted by his bitter uncle, who wants to ascend the throne himself.",
    image: "https://example.com/the-lion-king.jpg",
    category: "Animation",
  },
  {
    name: "The Green Mile",
    description: "The lives of guards on Death Row are affected by one of their charges: a black man accused of child murder and rape, yet who has a mysterious gift.",
    image: "https://example.com/the-green-mile.jpg",
    category: "Drama",
  },
  {
    name: "The Avengers",
    description: "Earth's mightiest heroes must come together and learn to fight as a team if they are going to stop the mischievous Loki and his alien army from enslaving humanity.",
    image: "https://example.com/the-avengers.jpg",
    category: "Action",
  },
  {
    name: "Interstellar",
    description: "A team of explorers travel through a wormhole in space in an attempt to ensure humanity's survival.",
    image: "https://example.com/interstellar.jpg",
    category: "Sci-Fi",
  },
  {
    name: "Back to the Future",
    description: "Marty McFly, a 17-year-old high school student, is accidentally sent 30 years into the past in a time-traveling DeLorean invented by his close friend, the eccentric scientist Doc Brown.",
    image: "https://example.com/back-to-the-future.jpg",
    category: "Sci-Fi",
  },
  {
    name: "Gladiator",
    description: "A former Roman General sets out to exact vengeance against the corrupt emperor who murdered his family and sent him into slavery.",
    image: "https://example.com/gladiator.jpg",
    category: "Action",
  },
  {
    name: "The Sixth Sense",
    description: "A boy who communicates with spirits seeks the help of a disheartened child psychologist.",
    image: "https://example.com/the-sixth-sense.jpg",
    category: "Thriller",
  },
]

movies.each do |movie|
  Movie.create!(movie)
end
