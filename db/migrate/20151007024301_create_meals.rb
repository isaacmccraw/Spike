class CreateMeals < ActiveRecord::Migration
  def change
    create_table :meals do |t|
      t.belongs_to :user
      t.has_many :food_items
      t.string :name
      t.string :type_of_food
      t.timestamps
    end
  end
end
