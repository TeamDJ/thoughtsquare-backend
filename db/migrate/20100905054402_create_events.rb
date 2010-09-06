class CreateEvents < ActiveRecord::Migration
  def self.up
    create_table :events do |t|
      t.integer :user_id
      t.integer :location_id
      t.string :event_type
      t.timestamp :when
    end
  end

  def self.down
    drop_table :events
  end
end
