# default value to hash
no_nil_hash = Hash.new("not nill")

# see the difference between objects and symbols
puts "string".object_id
puts "string".object_id

puts :symbol.object_id
puts :symbol.object_id

# symbols = immutable, unique so save memory, faster than strings as keys

symbol_hash = {
  :one => 1,
  :two => 2,
  :three => 3,
}

# convert strings to syms

strings = ["HTML", "CSS", "JavaScript", "Python", "Ruby"]

symbols = []

strings.each{ |x| symbols.push(x.to_sym)}

# strings.each{ |x| symbols.push(x.intern)} # same thing as above

# hash rocket, don't think about it too hard

movies = {
  :up => "good movie",
  :titanic => "long movie",
  :greenmile => "great movie"
}

# nevermind it's deprecated since 1.9, new way below

movies = {
  up: "good movie",
  titanic: "long movie",
  greenmile: "great movie"
}

# select method for hashes

movie_ratings = {
  memento: 3,
  primer: 3.5,
  the_matrix: 5,
  truman_show: 4,
  red_dawn: 1.5,
  skyfall: 4,
  alex_cross: 2,
  uhf: 1,
  lion_king: 3.5
}
good_movies = movie_ratings.select { |x, y| 3 < y}

# also for symbols

grades = { alice: 100,
  bob: 92,
  chris: 95,
  dave: 97
}

alice_grade = grades.select { |k, v| k == :alice }
# ==> { :alice => 100 }

# each_key and each_value

movie_ratings.each_key {|x| puts x}
movie_ratings.each_value {|x| puts x}