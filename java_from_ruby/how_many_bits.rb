require 'java'
java_import 'HowManyBits'

# START:oops
bits = HowManyBits.new

bits.needed_for 1_000_000
# => 64
# END:oops


# START:java_send
bits.java_send :neededFor, [Java::int], 1_000_000
# => 32
# END:java_send

# START:java_method
bits_needed_for = bits.java_method :neededFor, [Java::int]
bits_needed_for.call 1_000_000
# => 32
# END:java_method

# START:java_alias
class HowManyBits
  java_alias :needed_for_int, :neededFor, [Java::int]
end

puts bits.needed_for_int(1_000_000)
# END:java_alias
