class CreateCompanies < ActiveRecord::Migration
  def self.up
    create_table :companies do |t|
      t.string :name, :null => false, :limit => 150
      t.string :permalink, :null => false, :limit => 60
      t.integer :rating, :default => 0
      t.text :description
      t.string :address
      t.float :latitude
      t.float :longitude
      t.integer :category_id
      t.integer :city_id
      t.integer :user_id
      t.timestamps
    end
    add_index("companies","name")
    add_index("companies", "category_id")
    add_index("companies", "city_id")
    
  end

  def self.down
    remove_index("companies","name")
    remove_index("companies", "category_id")
    remove_index("companies", "city_id")
    drop_table :companies
  end
end