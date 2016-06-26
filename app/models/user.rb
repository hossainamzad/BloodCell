class User < ActiveRecord::Base

	 has_secure_password 
	 validates_confirmation_of :password  
	 validates_presence_of :password, on: :create
	 validates :username, uniqueness: true, uniqueness: { case_sensitive: false }

end
