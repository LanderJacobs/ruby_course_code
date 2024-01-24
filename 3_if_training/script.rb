if else
    print "if"
elsif true
    print "elsif"
else
    print "else"
end



statement = false

unless statement
  puts "unless"
end

print "unless 2" unless statement


# test_1 should be true
test_1 = (true || false) && true

# test_2 = should be true
test_2 = (1 == 1) && (2 >= 2 && 3 < 4)

# test_3 = should be false
test_3 = !true || false