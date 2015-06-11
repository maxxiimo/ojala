require 'rails_helper'

RSpec.describe Category, type: :model do

  before (:each) do
    @category = FactoryGirl.build(:category)
  end

  it "can be instantiated" do
    expect(@category).to be_an_instance_of(Category)
  end

  it "has a default name of TEST" do
    expect(@category.name).to eq("TEST")
  end

end
