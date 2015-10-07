class MealController < ApplicationController
	def new
  		@meal = Meal.new
	end

def create 
 	 @meal = Meal.new(meal_params) 
  	if @meal.save 
   		#session[:user_id] = @user.id 
    	redirect_to '/' 
  	else 
    	redirect_to '/' 
	  end 
end

	private
  	def meal_params
    	params.require(:meal).permit(:name, :type_of_food)
  	end
end
