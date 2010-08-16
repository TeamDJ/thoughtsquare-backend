class AddCurrentLocationToUser < ActiveRecord::Migration
  def self.up
    add_column :users, :current_location_id, :integer
  end

  def self.down
    remove_column :users, :current_location_id
  end
end
