class View
  def create_new_food
    puts "Enter after the name of your food followed by its calorie per 100g intake and the Food Category"
    print ">"
    gets.chomp
  end

  def error_stdin
    puts "there was an error in computing information given please respect formating"
  end

  def list_food_array(food_list_array)
    food_list_array.each_with_index do |elem, index|
      puts "#{index + 1}. #{elem.food_name} #{elem.food_calorieper1g}"
    end
  end

  def index_delete
    puts "enter the number you want to delete"
    print ">"
    gets.chomp
  end
end
