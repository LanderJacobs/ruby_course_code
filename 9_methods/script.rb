def what_up(greeting, *friends)
    friends.each { |friend| puts "#{greeting}, #{friend}!" }
end
  
what_up("What up", "Ian", "Zoe", "Zenas", "Eleanor")

# example on sorting

my_array = [3, 4, 8, 7, 1, 6, 5, 9, 2]

my_array.sort!

print my_array

# also for alphabetical

books = ["Charlie and the Chocolate Factory", "War and Peace", "Utopia", "A Brief History of Time", "A Wrinkle in Time"]

books.sort!

print books

# The combined comparison operator looks like this: <=>. It returns 0 if the first operand (item to be compared) equals the second, 1 if the first operand is greater than the second, and -1 if the first operand is less than the second.

book_1 = "A Wrinkle in Time"

book_2 = "A Brief History of Time"

# should be 1
book_1 <=> book_2

# ordering

books = ["Charlie and the Chocolate Factory", "War and Peace", "Utopia", "A Brief History of Time", "A Wrinkle in Time"]

# To sort our books in ascending order, in-place
books.sort! { |firstBook, secondBook| firstBook <=> secondBook }

# Sort your books in descending order, in-place below
books.sort! { |firstBook, secondBook| secondBook <=> firstBook }

print books