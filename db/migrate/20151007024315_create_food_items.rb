class CreateFoodItems < ActiveRecord::Migration
  def change
    create_table :food_items do |t|
      t.belongs_to :meal
      t.string :name
      t.timestamps
    end
  end
end
