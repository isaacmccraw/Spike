class SessionsController < ApplicationController
	def new

end
#creates session
	def create
    	@user = User.find_by_email(params[:session][:email])
    	if @user && @user.authenticate(params[:session][:password])
      		session[:user_id] = @user.id
      		redirect_to '/food_items'
    	else
          flash[:notice] = "Username or Password incorrect."
      		redirect_to '/login'
    	end
  	end
    #removes a session
  	def destroy 
  		session[:user_id] = nil 
  		redirect_to '/' 
	end
end
