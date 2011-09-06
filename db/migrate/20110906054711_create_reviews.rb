class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.text :post, :null => false
      t.boolean :type, :default => true
      t.integer :rating, :default => 0
      t.integer :user_id, :null => false
      t.integer :company_id, :null => false
      t.timestamps
    end
  end
end
