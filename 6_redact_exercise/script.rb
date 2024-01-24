puts "The text to redact:"
text = gets.chomp

puts "The words to redact:"
redact = gets.chomp

words = text.split(" ")

redacted_text = ""

words.each do |word|
  if word.downcase == redact.downcase
    redacted_text += "REDACTED "
  else
    redacted_text += word + " "
  end
end

print redacted_text