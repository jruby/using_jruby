require 'java'

list = java.util.ArrayList.new

list << 'List of'
list << 3
list << :assorted_items

list.each do |item|
  puts "#{item.class}: #{item}"
end
