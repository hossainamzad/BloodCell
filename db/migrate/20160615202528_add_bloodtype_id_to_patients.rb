class AddBloodtypeIdToPatients < ActiveRecord::Migration
  def change
  	remove_column :patients, :bloodtype
  	add_column :patients, :bloodtype_id, :integer
  end
end
