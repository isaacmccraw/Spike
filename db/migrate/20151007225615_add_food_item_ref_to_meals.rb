class AddFoodItemRefToMeals < ActiveRecord::Migration
  def change
    add_reference :meals, :fooditem, index: true
  end
end
