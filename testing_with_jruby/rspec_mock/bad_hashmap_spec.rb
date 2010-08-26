require 'java'

java_import java.util.Map
java_import java.util.HashMap
java_import java.util.Iterator
java_import java.util.Set

describe HashMap do
  it 'can be created from an empty Map' do
    map = Map.new
    map.should_receive(:size).and_return(0)

    iter = Iterator.new
    iter.should_receive(:hasNext).and_return(false)

    # START:bad
    iter.should_receive(:next)
    # END:bad

    set = Set.new
    set.should_receive(:iterator).and_return(iter)

    map.should_receive(:entrySet).and_return(set)

    HashMap.new(map).size.should == 0
  end
end
