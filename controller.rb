require_relative "view"
require_relative "food"

class Controller
  def initialize(foodbook)
    @foodbook = foodbook
    @view = View.new
  end

  def create
    food_from_stdin = @view.create_new_food
    if food_from_stdin =~ /\A[A-z]+ \d*.?\d* [A-z]+\z/
      array_food_from_stdin = food_from_stdin.split(' ')
      food_obj_from_stdin = Food.new(array_food_from_stdin[0],array_food_from_stdin[1],array_food_from_stdin[2])
      @foodbook.create_food_save(food_obj_from_stdin)
    else
      @view.error_stdin
    end
  end

  def list
    food_list_array =  @foodbook.food_list
    @view.list_food_array(food_list_array)
  end

  def delete
  end

end
