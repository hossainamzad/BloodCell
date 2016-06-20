# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

bloodtypes = ["A+", "A-", "B+", "B-", "AB+", "AB-", "O+", "O-"]

bloodtypes.each do |group|
	Bloodtype.create({group: group})
end