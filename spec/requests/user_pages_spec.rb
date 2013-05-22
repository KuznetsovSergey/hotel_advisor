require 'spec_helper'

describe "User pages" do

  subject { page }
  let(:submit) { "Sign up" }
  describe "sign up" do

    before { visit "/users/sign_up" }

    describe "with invalid information" do
      it "should not create a user" do
        expect { click_button submit }.not_to change(User, :count)
      end
    end

    describe "with valid information" do
      before do
        fill_in "Email",         with: "user@example.com"
        fill_in "Password",        with: "foobar"
        fill_in "Password confirmation",     with: "foobar"
      end

      it "should create a user" do
        expect { click_button submit }.to change(User, :count).by(1)
      end
    end
    describe "with no valid information" do
      before do
        fill_in "Email",         with: "user@example.com"
        fill_in "Password",        with: "foobar"
        fill_in "Password confirmation",     with: ""
      end

      it "should create a user" do
        expect { click_button submit }.to change(User, :count).by(0)
      end
    end
  end

  describe "sign in" do
  	before(:each) do
  		FactoryGirl.create(:user)
  	end

    before { visit "/users/sign_in" }

      it "should sign in a user" do

        fill_in "Email", with: "user@example.com"
        fill_in "Password", with: "foobar"

        click_button "Sign in"
        page.should have_content("Signed in successfully.")
    end
    it "should not sign in a user" do
        fill_in "Email", with: "user@example.com"
        fill_in "Password", with: " "

        click_button "Sign in"
        page.should have_content("Invalid email or password.")
    end
     it "should not sign in a user" do

        fill_in "Email", with: " "
        fill_in "Password", with: "foobar"

        click_button "Sign in"
        page.should have_content("Invalid email or password.")
    end
  end

end
