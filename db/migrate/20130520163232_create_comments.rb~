class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :content
      t.integer :evaluation
      t.integer :hotel_id

      t.timestamps
    end
     add_index :comments, [:hotel_id, :evaluation, :created_at]
  end
end
