# shorthand if and unless

puts "hello if true" if true
puts "no" unless false

puts true ? "true" : "false"

# shorter case

puts "Hello there!"
greeting = gets.chomp

case greeting
  when "English" then puts "Hello!"
  when "French" then puts "Bonjour!"
  when "Dutch" then puts "Hallo!"
  else puts "I don't understand English!"
end

# Only sets the variable if it is empty (combines || and =)

favorite_language ||= "Ruby"
puts favorite_language

# implicit return, the last result of an expression will be returned if there is no explicit return-value

def multiple_of_three(n)
    n % 3 == 0 ? "True" : "False"
end

# is the same as

def multiple_of_three(n)
    return n % 3 == 0 ? "True" : "False"
end

# the || makes it so the second method doesn't have to be checked, since a already returns true (ruby makes this faster)

def a
    puts "A was evaluated!"
    return true
  end
  
  def b
    puts "B was also evaluated!"
    return true
  end
  
  puts a || b
  puts "------"
  puts a && b

# combine if and each

my_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

my_array.each { |x| puts x if x % 2 == 0}

# upto and downto also work with numbers

"L".upto("P") { |x| puts x}

# respond_to? checkt of iets een methode kan gebruiken (checkt zo ook of het het juiste datatype is voor de methode)
# .next geeft de volgende integer

age = 26

print age.respond_to?(:next)

# << also works instead of += and .push()

alphabet = ["a", "b", "c"]
# alphabet.push("d") # Update me!
alphabet << "d"

caption = "A giraffe surrounded by "
# caption += "weezards!" # Me, too!
caption << "weezards!"

puts alphabet
puts caption