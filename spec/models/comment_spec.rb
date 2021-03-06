require 'spec_helper'

describe Comment do

  let(:hotel) { FactoryGirl.create(:hotel) }

	 before(:each) do
    @comment = FactoryGirl.create(:comment)
   end

  subject { @comment }

  it { should respond_to(:content) }
  it { should respond_to(:evaluation)}
  it { should respond_to(:hotel_id) }
  it { should be_valid }

	 describe "when hotel_id is nil" do
    before { @comment.hotel_id = nil }
    it { should_not be_valid }
  end
  	 describe "when the content is long" do
    before { @comment.content = "a"*301 }
    it { should_not be_valid }
  end

end
