require 'java'
java_import 'OverloadDemo'

# START:overload
OverloadDemo.what_type_is 42       # => "long"
OverloadDemo.what_type_is "Fun!"   # => "string"
OverloadDemo.what_type_is Hash.new # => "object"
# END:overload
