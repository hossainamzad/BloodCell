class Donor < ActiveRecord::Base
	has_many :donations
	has_many :patients, through: :donations
	has_one :bloodtype
	def self.search(search)
		if search
			find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
		end
	end

end
