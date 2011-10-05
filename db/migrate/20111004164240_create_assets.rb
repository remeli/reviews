class CreateAssets < ActiveRecord::Migration
  def change
    create_table :assets do |t|
      t.references :photo, :polymorphic => true
      t.timestamps
    end
    add_index :assets, [:photo_id, :photo_type]
  end
end