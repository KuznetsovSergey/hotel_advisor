require 'factory_girl'
FactoryGirl.define do
  factory :hotel do
    title     "Lorem Ipsum"
    star_rating    5
    breakfast_included "Yes"
    room_description "Lorem Ipsum"
    photo File.open(File.join(Rails.root, '/public/img.png'))
  end

  factory :address do
    country "Ukraine"
    state "Crimea"
    city "Sevastopol"
    street "Nakhimov Ave."
    hotel
   end

  factory :user do
    email "user@example.com"
    password "foobar"
  end
 
end
