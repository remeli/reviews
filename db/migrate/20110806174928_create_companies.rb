class CreateCompanies < ActiveRecord::Migration
  def self.up
    create_table :companies do |t|
      t.string :name
      t.string :permalink
      t.integer :rating
      t.integer :city_id
      t.ineteger :category_id
      t.text :description
      t.integer :user_id 
      t.timestamps
    end
  end

  def self.down
    drop_table :companies
  end
end
