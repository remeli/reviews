class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :email, :null => false, :limit => 100
      t.integer :rating, :default => 0
      t.string :first_name, :null => false, :limit => 150
      t.string :last_name,  :null => false, :limit => 150
      t.string :avatar_url, :default => "avatar.jpg"
      t.text   :about, :limit => 250
      t.boolean :admin, :default => false
      t.integer :city_id, :null => false
      t.string :hashed_password
      t.string :salt
      t.timestamps
    end
    add_index("users", "email")
  end

  def self.down
    remove_index("users", "email")
    drop_table :users
  end
end
