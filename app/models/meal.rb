class Meal < ActiveRecord::Base
  #relationship in database
	has_many :food_items
	belongs_to :user
end
