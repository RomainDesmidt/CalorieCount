require "open-uri"
require "csv"
FOODS_LIST = []
intermediary_array = []

CSV.foreach("food.csv") do |row|
  intermediary_array << row
end
p intermediary_array

#Need an intermediary array to hash method to correctly put it in FOODS_LIST

# simple operation to add, or delete food

#to Reword

def add_to_foods_list
  food_description = {}
  puts "Enter name / type / kcalper100gram"
  std_entry_food = gets.chomp.split(' ')
  food_description[:name] = std_entry_food[0]
  food_description[:type] = std_entry_food[1]
  food_description[:kcalpergram] = std_entry_food[2].to_f / 100
  FOODS_LIST << food_description
  return food_description
end


var = add_to_foods_list
p FOODS_LIST
p var

# Pear Fruit 57
# Apple Fruit 52


# to add implement a im going to eat x from food list, x gram, makes x calories,
# save it in csv for later use with date

#bio constant like metabolism kcal, proteine carbohydrate and fat ratio






# possibly needed to make it into a method and or not erasing existing save
# create a timed name csv to create a backup
CSV.open("food#{Time.now}.csv", "wb") do |csv|
  FOODS_LIST.each do |food|
   csv << [food[:name], food[:kcalpergram], food[:type]]
   end
end

CSV.open("food.csv", "wb") do |csv|
  FOODS_LIST.each do |food|
   csv << [food[:name], food[:kcalpergram], food[:type]]
   end
end

