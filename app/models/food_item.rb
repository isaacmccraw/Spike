class FoodItem < ActiveRecord::Base
  #relationship in database
	belongs_to :meal
end
