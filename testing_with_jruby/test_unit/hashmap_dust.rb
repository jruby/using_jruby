require 'test/unit'
require 'rubygems'
require 'dust'

require 'java'

java_import java.util.HashMap

unit_tests do
  def setup
    @map = HashMap.new
  end

  test "new hashmap is empty" do
    assert @map.isEmpty
  end

  test "hashmap with entry is not empty" do
    @map.put("hello", "world")
    assert !@map.isEmpty
  end

  test "value is associated with added key" do
    @map.put("hello", "world")
    assert_equal "world", @map.get("hello")
  end

  test "entryset iterator next raises error for empty hashmap" do
    assert_raises(NativeException) do
      @map.entrySet.iterator.next
    end
  end
end
