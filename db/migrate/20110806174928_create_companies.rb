class CreateCompanies < ActiveRecord::Migration
  def self.up
    create_table :companies do |t|
      t.string :name, :null => false, :limit => 150
      t.string :permalink, :null => false, :limit => 60
      t.integer :rating, :default => 0
      t.text :description, :null => true
      t.integer :category_id, :null => false
      t.integer :city_id, :null => false
      t.integer :user_id, :null => false
      t.timestamps
    end
    add_index("companies","name")
    add_index("companies", "description")
    add_index("companies", "category_id")
    add_index("companies", "city_id")
    
  end

  def self.down
    drop_table :companies
  end
end