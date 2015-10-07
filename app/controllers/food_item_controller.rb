class FoodItemController < ApplicationController
	def new
  		@food_item = FoodItem.new
	end

def create 
 	 @food_item = FoodItem.new(food_item_params) 
  	if @food_item.save 
   		#session[:user_id] = @user.id 
    	redirect_to '/' 
  	else 
    	redirect_to '/' 
	  end 
end

	private
  	def food_item_params
    	params.require(:food_item).permit(:name)
  	end
end
