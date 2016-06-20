class CreateBloodtypes < ActiveRecord::Migration
  def change
    create_table :bloodtypes do |t|
      t.string :group

      t.timestamps null: false
    end
  end
end
