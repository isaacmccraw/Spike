class User < ActiveRecord::Base
  #uses secure password
	has_secure_password
	#relationship in database
  has_many :meals
end
