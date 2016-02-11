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

movies
  .select {|movie| movie[:budget] <= 100}
  .map {|movie| movie[:title]}
  .each {|title| puts "#{title} had a budget of 100 or less."}

movies
  .select{|movie| movie[:stars].include? "Leonardo DiCaprio"}
  .map {|movie| movie[:title]}
  .each {|title| puts "#{title} had Leonardo Dicaprio as a star."}
