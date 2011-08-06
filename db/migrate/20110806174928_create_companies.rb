class CreateCompanies < ActiveRecord::Migration
  def self.up
    create_table :companies do |t|
      t.string :name, :null => false
      t.string :permalink, :null => false
      t.integer :rating, :default => 0
      t.text :description, :null => true
      t.integer :category_id, :null => false
      t.integer :city_id, :null => false
      t.integer :user_id, :null => false
      t.timestamps
    end
  end

  def self.down
    drop_table :companies
  end
end
