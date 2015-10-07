class Meal < ActiveRecord::Base
	has_many :food_items
	belongs_to :user
end
