require 'spec_helper'

describe RSquared do
  
  it "should calculate the total variation of an array" do
    RSquared.new([100, 250, 90, 110, 350]).total_variation.should == 53200
  end
  
  it "should calculate the categorized total variation" do
    model = RSquared.new([100, 250, 90, 110, 350])
    model.categorize([90, 100, 110], [250, 350])
    model.categories.first.total_variation.should == 200
    model.categories.last.total_variation.should == 5000
  end
  
  it "should calculate the variation explained" do
    model = RSquared.new([100, 250, 90, 110, 350])
    model.categorize([90, 100, 110], [250, 350])
    model.explained_variation.should == 90.23
  end
  
end
