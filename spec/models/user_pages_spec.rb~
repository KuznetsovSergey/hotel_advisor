require 'spec_helper'

describe "User pages" do

  subject { page }
  describe "sign up" do

    before { visit "/users/sign_up" }

    let(:submit) { "Sign up" }

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
  end

  describe "sign in" do
    before { visit "/users/sign_in" }
    let(:submit) { "Sign in" }
      it "should not create a user" do
        FactoryGirl.create(:user)

        fill_in "Email", with: "user@example.com"
        fill_in "Password", with: "foobar"

        click_button "Sign in"
        page.should have_content("Signed in successfully.")
    end
  end
end