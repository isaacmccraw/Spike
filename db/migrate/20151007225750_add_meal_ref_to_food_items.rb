class AddMealRefToFoodItems < ActiveRecord::Migration
  def change
    add_reference :food_items, :meal, index: true
  end
end
