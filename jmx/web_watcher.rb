require 'rubygems'
require 'jmx'

client  = JMX.connect :port => 9999
counter = client['DefaultDomain:type=HitBean']

loop do
  puts "The hit counter is at #{counter.hits.value}"
  puts "Type R to reset, or press Enter to continue"

  counter.clear if gets.strip.upcase == 'R'
end
