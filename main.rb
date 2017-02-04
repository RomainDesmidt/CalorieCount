require "open-uri"
require "csv"
FOODS_LIST = []



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



#food_list << Food_Description
#food_list = []

var = add_to_foods_list

p FOODS_LIST
p var
#Food_Description = {name: "Pear", type: "Fruit", kcalpergram: 0.57 }
#Food_Description = {name: "Pear", type: "Fruit", kcalpergram: 0.57 }
# Pear Fruit 57

CSV.open("food.csv", "wb") do |csv|
  FOODS_LIST.each do |food|
   csv << [food[:name], food[:kcalpergram], food[:type]]
   end
end
