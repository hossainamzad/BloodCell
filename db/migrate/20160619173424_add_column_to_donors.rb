class AddColumnToDonors < ActiveRecord::Migration
  def change
    add_column :donors, :counter, :integer
  end
end
