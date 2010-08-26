
require 'rubygems'
require 'expectations'

require 'java'

java_import java.util.HashMap

Expectations do 
  expect true do 
    HashMap.new.isEmpty
  end

  expect false do 
    h = HashMap.new
    h.put("hello", "world")
    h.isEmpty
  end

  expect "world" do 
    h = HashMap.new
    h.put("hello", "world")
    h.get("hello")
  end

  expect NativeException do 
    HashMap.new.entrySet.iterator.next
  end
end
