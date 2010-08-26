require 'java'
java_import 'ParamDemo'

# START:convert
ParamDemo.hello 'world'
# => "hello, world"

ParamDemo.has_even_size([Object.new, Object.new])
# => true
# END:convert
