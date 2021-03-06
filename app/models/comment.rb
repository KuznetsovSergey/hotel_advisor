class Comment < ActiveRecord::Base
  attr_accessible :content, :evaluation, :hotel_id

  belongs_to :hotel

  validates :hotel_id, presence: true
  validates :content, length:  { minimum: 1,maximum: 300 }

  default_scope order: 'comments.created_at DESC'
  after_save do
  	count_votes = hotel.comments.count("evaluation").to_f
  	mean_votes = hotel.comments.average("evaluation").to_f
  	all_mean = Hotel.average("total_rating").to_f
    total_rating = (count_votes/(count_votes+5))*mean_votes+(count_votes/(count_votes+5))*all_mean
    hotel.update_attributes total_rating: total_rating.to_f.round(3)
  end
end
