require 'java'

java_import java.util.Map
java_import java.util.HashMap
java_import java.util.Iterator
java_import java.util.Set

# START:mocha
require 'mocha'

RSpec.configure do |config|
  config.mock_with :mocha
end
# END:mocha

# START:construct
describe HashMap do
  it 'can be created from an empty Map' do
    map = Map.new
    map.expects(:size).returns(0)

    iter = Iterator.new
    iter.expects(:hasNext).returns(false)

    set = Set.new
    set.expects(:iterator).returns(iter)

    map.expects(:entrySet).returns(set)

    HashMap.new(map).size.should == 0
  end
end
# START:construct
