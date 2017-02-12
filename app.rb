require_relative "food"
require_relative "foodbook"
require_relative "controller"
require_relative "view"
require_relative "router"

# apple = Food.new("Apple", 0.52, "Fruit")
# p apple

# pear = Food.new("Pear", 0.57, "Fruit", {lipideper100: 33, proteineper100: 33})
# p pear

foodbook = Foodbook.new("food.csv")
controller = Controller.new(foodbook)
# controller.create
# p foodbook.food_object
router = Router.new(controller)
router.run
# foodbook.create_food_save(pear)
# foodbook.create_food_save(apple)
# p foodbook.food_list
