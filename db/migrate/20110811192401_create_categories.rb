class CreateCategories < ActiveRecord::Migration
  def self.up
    create_table :categories do |t|
      t.string :name, :null => false, :limit => 100
      t.string :permalink, :null => false, :limit => 150
      t.timestamps
    end
    add_index("categories", "name")
  end

  def self.down
    remove_index("categories", "name")
    drop_table :categories
  end
end
