require "csv"
require_relative "food"


class Foodbook
  attr_reader :food_object, :food_list
  def initialize(csv)
    @csv = csv
    @food_list = []
    csv_sort_by_name_and_delete_duplicate
    CSV.foreach(@csv) do |row|
      @food_list << Food.new(row[0],row[1],row[2])
    end
  end

  def create_food_save(food_object)
    @food_list << food_object
    save_into_csv
  end

  def delete_food_save(food_index)
    @food_list.delete_at(food_index)
    save_into_csv
  end

  def list_food
    @food_list
  end

  def csv_sort_by_name_and_delete_duplicate
    raw_food_data = []
    CSV.foreach(@csv) do |row|
      raw_food_data << row
    end
    raw_food_data.sort!.uniq!
    CSV.open(@csv, "wb") do |csv|
      raw_food_data.each do |elem|
        csv << elem
      end
    end
  end

  def save_into_csv
    CSV.open(@csv, "wb") do |csv|
      @food_list.each do |elem|
        csv << [elem.food_name, elem.food_calorieper1g, elem.food_category]
      end
    end
  end

end
