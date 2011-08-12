class CreateCategories < ActiveRecord::Migration
  def self.up
    create_table :categories do |t|
      t.string :name, :null => false, :limit => 100
      t.string :permalink, :null => false, :limit => 150
      t.timestamps
    end
  end

  def self.down
    drop_table :categories
  end
end
