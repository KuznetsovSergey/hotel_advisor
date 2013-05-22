require 'spec_helper'

describe User do

  before { @user = User.new(email: "user@example.com", password: "barfoo") }

  subject { @user }

  it { should respond_to(:email) }
  it { should respond_to(:password) }

  describe "when email is not present" do
    before { @user.email = " " }
    it { should_not be_valid }
  end
   describe "when password is not present" do
    before { @user.password = " " }
    it { should_not be_valid }
  end
  describe "check the length of the password" do
    before { @user.password = "a"*5 }
    it { should_not be_valid }
  end

  

  describe "user sign up" do
    before { visit "/users/sign_up" }
    let(:submit) { "Sign up" }

  describe "with invalid information" do
      let(:submit) { "Sign up" }
      it "should not create a user" do
        expect { click_button submit }.not_to change(User, :count)
      end
    end
  end   
end