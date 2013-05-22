class Address < ActiveRecord::Base

  attr_accessible :city, :country, :state, :street, :hotel_id
  belongs_to :hotel

  validates :hotel_id, presence: true

end
