require 'spec_helper'
describe "Routes" do
	subject { page }
	describe "Home page" do
		before { visit "/" }
		it { should have_selector('title',text: "Home" ) }
	end
	describe "Sign up page" do
		before { visit "/users/sign_up" }
		it { should have_selector('title',text: "Sign up" ) }
	end
	describe "Sign in page" do
		before { visit "/users/sign_in" }
		it { should have_selector('title',text: "Sign in" ) }
	end
end
