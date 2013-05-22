require 'spec_helper'

describe Hotel do
  before(:each) do
    @hotel = FactoryGirl.create(:hotel)
  end

  subject { @hotel }

  it { should respond_to(:title) }
  it { should respond_to(:star_rating) }
  it { should respond_to(:breakfast_included) }
  it { should respond_to(:room_description) }
  it { should respond_to(:photo) }
  it { should respond_to(:price) }
  it { should respond_to(:address) }
  it { should respond_to(:comments) }
  it { should be_valid }

  describe "when the title is not filled" do
    before { @hotel.title = "" }
    it { should_not be_valid }
  end
   describe "when the title is long" do
    before { @hotel.title = "a"*51 }
    it { should_not be_valid }
  end


end
