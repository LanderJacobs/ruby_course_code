movies = {
  greenmile: 5,
  transformers: 3,
  frozen: 3
}

puts "Give me some input (add/update/display/delete):"
choice = gets.chomp.downcase

case choice
  when "add"
    puts "Give me a movie title:"
    title = gets.chomp
    puts "Give me your rating:"
    rating = gets.chomp
    if movies[title.to_sym] == nil
      movies[title.to_sym] = rating.to_i
      puts "It was added!"
    else
      puts "It already exists"
    end
  when "update"
    puts "Give me your movie title:"
    title = gets.chomp
    if movies[title.to_sym] == nil
      puts "This one doesn't exist yet!"
    else
      puts "Give me your new rating:"
      rating = gets.chomp
      movies[title.to_sym] = rating.to_i
      puts "The rating for #{title} has been updated to #{rating}"
    end
  when "display"
    movies.each { |x, y| puts "#{x}: #{y}"}
  when "delete"
    puts "Give me a movie title:"
    title = gets.chomp
    if movies[title.to_sym] != nil
      movies.delete(title.to_sym)
      puts "It was deleted!"
    else
      puts "This one doesn't exist"
    end
  else
    puts "Error!"
end