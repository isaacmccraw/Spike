class HomePageController < ApplicationController
  #requires a user to be logged in
	before_action :require_user
end
