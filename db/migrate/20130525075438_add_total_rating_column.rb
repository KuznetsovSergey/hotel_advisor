class AddTotalRatingColumn < ActiveRecord::Migration
 def change
    add_column :hotels, :total_rating, :float
  end
end
