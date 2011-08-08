class AddAdressToCompanies < ActiveRecord::Migration
  def self.up
    change_table :companies do |t|
      t.string :address 
    end
  end

  def self.down
    remove_column :companies, :address
  end
end
