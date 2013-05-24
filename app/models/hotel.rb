class Hotel < ActiveRecord::Base
	attr_accessible :breakfast_included, :photo, :price, :room_description, :star_rating, :title

	mount_uploader :photo, PhotoUploader

  validates :title, presence: true, length:  {  maximum: 50 }

  has_one :address
  has_many :comments
end
