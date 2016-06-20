class CreateDonations < ActiveRecord::Migration
  def change
    create_table :donations do |t|
      t.integer :donor_id
      t.integer :patient_id

      t.timestamps null: false
    end
  end
end
