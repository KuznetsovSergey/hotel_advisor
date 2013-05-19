require 'spec_helper'

describe Hotel do

  let(:hotel) { FactoryGirl.create(:hotel) }
  
  before(:each) do
    @address = FactoryGirl.create(:address)
  end

  subject { @address }

  it { should respond_to(:country) }
  it { should respond_to(:state) }
  it { should respond_to(:city) }
  it { should respond_to(:street) }
  it { should respond_to(:hotel_id) }
  it { should be_valid }
  
end
