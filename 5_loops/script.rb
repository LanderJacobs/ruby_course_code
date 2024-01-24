# while loop

i = 3
while i > 0 do
  print i
  i -= 1
end

# kind of like while but sligthly different

counter = 1
until counter > 10
  puts counter
  counter += 1
end

# include 15
for num in 1..15
    puts num
end

# exclude 15
for num in 1...15
    puts num
end


# special ruby loop
# break stops loop
# next skips loop if true

i = 20
loop do
  i -= 1
  next if i%2 > 0
  print "#{i}"
  break if i <= 0
end

# or
# loop {print "Hello"}
# watch out, this is an infinite loop


# foreach in ruby

odds = [1,3,5,7,9]

# Add your code below!
odds.each do |x|
  print "#{x * 2}"
end


# very compact for-loop

10.times { puts "Hello world"}