require 'java'
java_import 'FieldDemo'

# START:main
class FieldDemo
  field_accessor :somePrivateField => :some_field
end

obj = FieldDemo.new

obj.some_field = 1
obj.some_field
# => 1
# END:main
