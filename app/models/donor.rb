class Donor < ActiveRecord::Base
	has_many :donations
	has_many :patients, through: :donations
	has_one :bloodtype
	validates :name, :email, uniqueness: true, uniqueness: { case_sensitive: false }

	def self.search(search)
		if search
			find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
		end
	end

end
