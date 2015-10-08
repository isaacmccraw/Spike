class FoodItemController < ApplicationController
  #requires a user to be logged in
  before_action :require_user
  #new food item
	def new
  		@food_item = FoodItem.new
	end
#creates a food item
  def create 
 	   @food_item = FoodItem.new(food_item_params) 
     tag_ids = params[:meal_id]
     @food_item.meal_id = tag_ids
  	 if @food_item.save 
      	redirect_to '/' 
  	 else 
    	 redirect_to '/' 
	   end 
  end
# parameters of food items
	private
  	def food_item_params
    	params.require(:food_item).permit(:name)
  	end
end
