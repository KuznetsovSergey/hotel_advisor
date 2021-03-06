class Hotel < ActiveRecord::Base
	attr_accessible :breakfast_included, :photo, :price, :room_description, :star_rating, :title, :total_rating

	mount_uploader :photo, PhotoUploader

  validates :title, presence: true, length:  {  maximum: 50 }
  validates_numericality_of :star_rating, less_than_or_equal_to: 5

  has_one :address
  has_many :comments
end
