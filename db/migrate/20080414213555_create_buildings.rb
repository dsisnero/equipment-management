class CreateBuildings < ActiveRecord::Migration
  def self.up
    create_table :buildings do |t|
      t.integer :site_id
      t.decimal :height
      t.string :name
      t.text :description

      t.timestamps

    end
  end

  def self.down
    drop_table :buildings
  end
end
