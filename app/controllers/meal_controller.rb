class MealController < ApplicationController
  #requires to be a logged in user
  before_action :require_user
  # new meal
	def new
  		@meal = Meal.new
	end
#creates a meal
def create 
 	 @meal = Meal.new(meal_params)
   @meal.user_id = current_user.id
  	if @meal.save 
    	redirect_to '/' 
  	else 
    	redirect_to '/' 
	  end 
end
#parameters of a meal
	private
  	def meal_params
    	params.require(:meal).permit(:name, :type_of_food)
  	end
end
