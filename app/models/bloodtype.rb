class Bloodtype < ActiveRecord::Base
	belongs_to :donor
	belongs_to :patient

	bloodtypes = ["A+", "A-", "B+", "B-", "AB+", "AB-", "O+", "O-"]

	
end
