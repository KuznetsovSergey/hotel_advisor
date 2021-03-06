require 'spec_helper'

describe "Hotels pages" do
	subject { page }
	let(:submit) { "Add" }
  let(:user) { FactoryGirl.create(:user) }
	before { sign_in user }
	before { visit new_hotel_path}

	it "visit hotel page" do
		page.should have_content("Add new Hotel")
	end

	describe "with valid information" do

		before do
			fill_in "Title",          with: "Simple title"
			fill_in "Price",          with: "100"
			fill_in "State",          with: "Crimea"
			fill_in "Street",         with: "Vakalenchuka"
			fill_in "Description",    with: "simple Description"
			select "Yes",             with: "Breakfast included?"
			select "5",               with:  "Star rating"
		end

		it "should create a hoter" do
			expect { click_button submit }.to change(Hotel, :count).by(1)
		end

		it "should create  successful message" do
			click_button submit
			page.should have_content("The hotel has successfully added")
		end
	end
	
	describe "without reliable information" do
		it "should no valid message" do
			click_button submit
			page.should have_content("Title can't be blank")
		end
	end
	
end





