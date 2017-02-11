class Food
  attr_reader :food_name, :food_calorieper1g, :food_category
  def initialize(food_name,food_calorieper1g,food_category, food_comp = {})
  @food_name = food_name
  @food_calorieper1g = food_calorieper1g
  @food_category = food_category
  @food_comp = food_comp
  end


end
