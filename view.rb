class View
  def create_new_food
    puts "Enter after the name of your food followed by its calorie per 100g intake and the Food Category"
    print ">"
    gets.chomp
  end

  def error_stdin
    puts "there was an error in computing information given please respect formating"
  end
end
