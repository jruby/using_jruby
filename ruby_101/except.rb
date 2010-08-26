# START:basic
begin
  puts "Everything's fine so far"
  raise "I'm raising an exception right now"
  puts "Ruby will never run this line"
rescue => e
  puts "My exception says: #{e}"
end
# END:basic

# START:advanced
class ImCold < RuntimeError
end

begin
  raise ImCold, "Brrr, it's chilly in here!"
rescue ImCold => e
  puts "I'm cold. #{e}"
rescue Exception => e
  puts "Some exception other than ImCold was thrown."
ensure
  puts "This will _always_ print, kinda like Java's finally"
end
# END:advanced
