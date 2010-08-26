require 'java'
java_import 'BigIntDemo'

# START:bignum
a_big_number = 10 ** 100 + 1
BigIntDemo.bigger_than_googol(a_big_number)
# => true
# END:bignum
