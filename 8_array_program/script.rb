puts "Give me some text to work with:"
text = gets.chomp

words = text.split(" ")

frequencies = Hash.new(0)
words.each{ |x| frequencies[x] += 1}
frequencies = frequencies.sort_by do |word, number|
  number
end
frequencies.reverse!

frequencies.each{|x, y| puts "#{x} #{y}"}