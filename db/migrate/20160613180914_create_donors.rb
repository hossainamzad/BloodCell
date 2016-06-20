class CreateDonors < ActiveRecord::Migration
  def change
    create_table :donors do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :bloodtype
      t.boolean :availability

      t.timestamps null: false
    end
  end
end
