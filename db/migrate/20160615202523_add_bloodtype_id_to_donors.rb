class AddBloodtypeIdToDonors < ActiveRecord::Migration
  def change
  	remove_column :donors, :bloodtype
  	add_column :donors, :bloodtype_id, :integer
  end
end
