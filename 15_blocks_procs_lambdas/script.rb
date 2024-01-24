# do something with an array using collect, for modification of original array use .collect! (.map! does the exact same thing)

fibs = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55]

doubled_fibs = fibs.collect {|x| x * 2}
print doubled_fibs

# allow the input of blocks by using yield

def block_test
    puts "We're in the method!"
    puts "Yielding to the block..."
    yield
    puts "We're back in the method!"
end
  
block_test { puts ">>> We're in the block!" }

# use yield with variables

def yield_name(name)
    puts "In the method! Let's yield."
    yield("Kim")
    puts "In between the yields!"
    yield(name)
    puts "Block complete! Back in the method."
  end
  
  yield_name("Eric") { |n| puts "My name is #{n}." }

# my first own yield

def double(number)
    yield(number)
end
  
puts double(5) {|x| x * 2}

# blocks can't be saved as objects but as procs

multiples_of_3 = Proc.new do |n|
    n % 3 == 0
end
  
print (1..100).to_a.select(&multiples_of_3)

# .floor rounds a float down to an integer

floats = [1.2, 3.45, 0.91, 7.727, 11.42, 482.911]

round_down = Proc.new {|x| x.floor}

ints = floats.collect(&round_down)
print ints

# very minimal code-example with proc

def greeter
    yield
end
  
phrase = Proc.new {puts "Hello there!"}
  
greeter(&phrase)

# .call a proc

hi = Proc.new {puts "Hello!"}
hi.call

# pass proc using symbols

numbers_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

strings_array = numbers_array.map(&:to_s)

puts strings_array

# lambda looks like procs

def lambda_demo(a_lambda)
    puts "I'm the method!"
    a_lambda.call
end
  
lambda_demo(lambda { puts "I'm the lambda!" })

# lambda in an object

strings = ["leonardo", "donatello", "raphael", "michaelangelo"]

symbolize = (lambda { |x| x.to_sym})

symbols = strings.collect(&symbolize)
puts symbols

# lamda throws error for an unexpected value, proc sets it to "nil"
# when a lambda returns something it goes back to the rest of the method, a proc will make it's return the return of the method

def batman_ironman_proc
    victor = Proc.new { return "Batman will win!" }
    victor.call
    "Iron Man will win!"
end

puts batman_ironman_proc

def batman_ironman_lambda
    victor = lambda { return "Batman will win!" }
    victor.call
    "Iron Man will win!"
end
  
puts batman_ironman_lambda

# get everything that is a symbol out of the array

my_array = ["raindrops", :kettles, "whiskers", :mittens, :packages]

symbol_filter = (lambda {|x| x.is_a? Symbol})

symbols = my_array.select(&symbol_filter)

puts symbols

# block exercise

odds_n_ends = [:weezard, 42, "Trady Blix", 3, true, 19, 12.345]

ints = odds_n_ends.select {|x|x.is_a? Integer}

puts ints

# shouldn't be too hard but gave me trouble

crew = {
  captain: "Picard",
  first_officer: "Riker",
  lt_cdr: "Data",
  lt: "Worf",
  ensign: "Ro",
  counselor: "Troi",
  chief_engineer: "LaForge",
  doctor: "Crusher"
}

first_half = (lambda {|key, value| value.to_s < 'M'})

a_to_m = crew.select(&first_half)

puts a_to_m

# end