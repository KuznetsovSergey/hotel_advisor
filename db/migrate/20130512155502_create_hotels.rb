class CreateHotels < ActiveRecord::Migration
  def change
    create_table :hotels do |t|
      t.string :title
      t.integer :star_rating
      t.string :breakfast_included
      t.string :string
      t.text :room_description
      t.string :photo
      t.integer :price

      t.timestamps
    end
  end
end
