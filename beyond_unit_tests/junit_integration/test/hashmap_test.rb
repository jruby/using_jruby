require 'test/unit'

require 'java'

java_import java.util.HashMap

class HashMapTestCase < Test::Unit::TestCase
  def setup
    @map = HashMap.new
  end

  def test_new_hashmap_is_empty
    assert @map.isEmpty
  end

  def test_hashmap_with_entry_is_not_empty
    @map.put("hello", "world")
    assert !@map.isEmpty
  end

  def test_value_is_associated_with_added_key
    @map.put("hello", "world")
    assert_equal "world", @map.get("hello")
  end

  def test_entry_set_iterator_next_raises_error_for_empty_hashmap
    assert_raises(NativeException) do
      @map.entrySet.iterator.next
    end
  end
end
