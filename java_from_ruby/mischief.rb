require 'java'
require 'jruby/core_ext'

java_import 'PerformedBy'
java_import 'Chronicler'
java_import 'Sorcery'

class Mischief
  # ... more mischief here ...
end

Mischief.add_class_annotation PerformedBy => {'name' => 'Ian'}
Mischief.become_java!

Chronicler.describe Sorcery
# >>> Charlie performs Sorcery

Chronicler.describe Mischief
# >>> Ian performs ruby.Mischief
