require 'java'
java_import 'VariableArgsDemo'

# START:main
VariableArgsDemo.longest_string "foo", "bazzles", "schnozzberry"
# => "schnozzberry"
# END:main
