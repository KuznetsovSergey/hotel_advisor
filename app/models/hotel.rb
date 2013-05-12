class Hotel < ActiveRecord::Base
  attr_accessible :breakfast_included, :photo, :price, :room_description, :star_rating, :string, :title
end
