class AddMealRefToUsers < ActiveRecord::Migration
  def change
    add_reference :users, :meal, index: true
  end
end
