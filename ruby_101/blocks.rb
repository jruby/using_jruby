# START:basic
list = [1, 2, 3, 4]

list.each { |n| puts n }

list.each do |n|
  puts n
end
# END:basic

# START:yield
def yield_thrice(value)
  yield value + 10
  yield value + 20
  yield value + 30
end

def call_thrice(value, &block)
  block.call value + 10
  block.call value + 20
  block.call value + 30
end

# Both of these will print the numbers 110, 120, and 130:
yield_thrice(100) { |n| puts n }
call_thrice(100)  { |n| puts n }
# END:yield
