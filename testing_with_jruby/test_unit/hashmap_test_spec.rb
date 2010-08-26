require 'rubygems'
require 'test/spec'

require 'java'

java_import java.util.HashMap

describe "an empty HashMap" do
  before :each do
    @map = HashMap.new
  end

  it "should be empty" do
    @map.isEmpty.should.be true
  end

  it "with an added entry should not be empty" do
    @map.put("hello", "world")
    @map.isEmpty.should.not.be true
  end

  it "should associate a value with a key" do
    @map.put("hello", "world")
    @map.get("hello").should.equal "world"
  end

  it "should raise error on entryset iterator next" do
    proc do
      @map.entrySet.iterator.next
    end.should.raise NativeException
  end
end
