require 'java'
java_import 'StringDemo'

# START:main
ruby_string = "This is a large string we don't want to convert frequently"
java_string = ruby_string.to_java

StringDemo.method_taking_a java_string
# END:main
