class AddReadyToDonors < ActiveRecord::Migration
  def change
  	  	add_column :donors, :ready, :datetime

  end
end
