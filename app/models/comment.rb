class Comment < ActiveRecord::Base
  attr_accessible :content, :evaluation, :hotel_id

  belongs_to :hotel

  validates :hotel_id, presence: true
  validates :content, length:  { minimum: 1,maximum: 300 }

  default_scope order: 'comments.created_at DESC'
end
