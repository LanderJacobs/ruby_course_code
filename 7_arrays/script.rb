s = [["ham", "swiss"], ["turkey", "cheddar"], ["roast beef", "gruyere"]]

s.each { |sub_array| sub_array.each { |y| puts y}}

some_array = [[1, 2], [3, 4]]

lunch_order = {
  "Ryan" => "wonton soup",
  "Eric" => "hamburger",
  "Jimmy" => "sandwich",
  "Sasha" => "salad",
  "Cole" => "taco"
}

lunch_order.each{ |x, y| puts y}