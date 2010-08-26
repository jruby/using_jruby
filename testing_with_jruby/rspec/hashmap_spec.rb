require 'java'

java_import java.util.HashMap

describe "An empty", HashMap do 
  before :each do 
    @map = HashMap.new
  end
  
  it "should be empty" do 
    @map.should be_empty
  end
  
  it "should have size zero" do 
    @map.size.should == 0
  end
  
  it "should allow elements to be added"
end
