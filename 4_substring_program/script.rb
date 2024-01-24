print "Give me a string please: "
user_input = gets.chomp
user_input.downcase!

if user_input.include? "s"
  user_input.gsub!(/s/, "th")
else
  puts "There are no s'ses"
end

puts "#{user_input}"