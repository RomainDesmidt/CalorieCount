puts "enter food, must have the 'Foodname Calper100g Foodcategory' formating"
string = gets.chomp
puts "OK" if string =~ /\A[A-z]+ \d*.?\d* [A-z]+\z/
array = string.split(' ')
p array
