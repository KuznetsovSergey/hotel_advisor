require 'spec_helper'
describe "Routes" do 
	describe "Home page" do
		it "should have the title 'Home'" do
			visit "/"
			page.should have_selector('title',text: "Home" ) 
		end
	end
end
