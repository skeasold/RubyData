movies = []

movies << {
  title: "Forest Gump",
  budget: 55,
  stars: ["Tom Hanks"]
}
movies << {
  title: "Star Wars",
  budget: 11,
  stars: ["Mark Hamill", "Harrison Ford"]
}
movies << {
  title: "Batman Begins",
  budget: 150,
  stars: ["Christian Bale", "Liam Neeson", "Michael Caine"]
}
movies << {
  title: "Titanic",
  budget: 200,
  stars: ["Kate Winslet", "Leonardo DiCaprio"]
}
movies << {
  title: "Inception",
  budget: 160,
  stars: ["Leonardo DiCaprio", "JGL"]
}

under_100 = movies.select do |movie|
  movie[:budget] <= 100
end

under_100_titles = under_100.map do |movie|
  movie[:title]
end

puts under_100_titles

actor_dicaprio = movies.select do |movie|
  movie[:stars].include? "Leonardo DiCaprio" #Only works with full name?
end

actor_dicaprio_titles = actor_dicaprio.map do |movie|
  movie[:title]
end

puts actor_dicaprio_titles
