class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.text :post, :null => false
      t.boolean :positive, :default => true
      t.integer :rating, :default => 0
      t.integer :user_id
      t.integer :company_id
      t.timestamps
    end
  end
end