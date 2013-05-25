require 'spec_helper'

describe "Hotels pages add new comment" do
	subject { page }
	let(:user) { FactoryGirl.create(:user) }
	@hotel = FactoryGirl.create(:hotel)
  FactoryGirl.create(:address, hotel_id: @hotel.id ) 
  hotel_id =  @hotel.id

	before { sign_in user }
	before {  visit  hotel_path(hotel_id) }
	 
	describe "add comment with valid information" do
		before do
			fill_in "Comment",          with: "Simple comment"
			choose "comment_evaluation_5"
			click_button "Add comment"
		end 
			it "should heave comment form successful message" do
			page.should have_content("The comment has successfully added")
		end
			it "should heave comment form " do
			expect { click_button "Add comment" }.to change(Comment, :count).by(1)
		end
	end

end





