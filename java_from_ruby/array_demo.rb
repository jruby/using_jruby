require 'java'
java_import 'ArrayDemo'

# START:main
ArrayDemo.what_type_is_it(['a', 'b', 'c'])
# => "org.jruby.RubyArray"

ArrayDemo.what_type_is_it(['a', 'b', 'c'].to_java)
# => "[Ljava.lang.Object;"
# END:main
