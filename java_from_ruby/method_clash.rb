require 'java'

java_import 'MethodClash'

# START:fix
the_clash = MethodClash.new

the_clash.java_send :initialize, [java.lang.String], 'everything'
# >> Now we're set up with everything
# END:fix

# START:clash
the_clash = MethodClash.new

the_clash.initialize 'everything'
# ~> -:8: wrong # of arguments(1 for 0) (ArgumentError)
# END:clash

