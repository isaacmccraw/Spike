class UsersController < ApplicationController
  #new user
	def new
  		@user = User.new
	end

def create 
  #creates a user
 	 @user = User.new(user_params) 
  	if @user.save 
   		session[:user_id] = @user.id 
    	redirect_to '/' 
  	else 
    	redirect_to '/signup' 
	  end 
end
#parameters of a user
	private
  	def user_params
    	params.require(:user).permit(:first_name, :last_name, :username, :email, :password)
  	end
end
