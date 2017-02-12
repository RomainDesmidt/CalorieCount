require_relative "controller"

class Router
  def initialize(controller)
    @controller = controller
    @stop_var = 0
  end

  def run
    until @stop_var == 4
      menu
      actions
    end
  end

  def menu
    24.times { print "#" }
    puts ""
    puts "1. Create New Food"
    puts "2. List Existing Food"
    puts "3. Delete Food at Index"
    puts "4. Exit"
    print ">"
    @stop_var = gets.chomp.to_i
  end

  def actions
    case @stop_var
    when 1 then @controller.create
    when 2 then @controller.list
    when 3 then @controller.delete
    when 4 then puts "Good bye!"
    else
      puts "wrong input try again"
    end
  end
end
