class DropMatches < ActiveRecord::Migration
  def up
  	drop_table :matches
  end
end
