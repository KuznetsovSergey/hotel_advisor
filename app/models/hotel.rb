class Hotel < ActiveRecord::Base
	attr_accessible :breakfast_included, :photo, :price, :room_description, :star_rating, :string, :title,
					:country, :state, :city, :street,:address

	mount_uploader :photo, PhotoUploader

    validates :title, presence: true, length:  { maximum: 50 }
    
    has_one :address
end
