# START:java_lang
require 'java'

java.lang.StringBuffer
# => Java::JavaLang::StringBuffer
# END:java_lang

require 'clojure.jar'

# START:clojure_lang
Java::clojure.lang.Repl
# => Java::ClojureLang::Repl
# END:clojure_lang

# START:top_level
Java::MyTopLevelClass
# => Java::MyTopLevelClass
# END:top_level

# START:namespace
swing = javax.swing
swing.JFrame
# => Java::JavaxSwing::JFrame
# END:namespace

# START:class_constant
StringBuffer = java.lang.StringBuffer
# END:class_constant

# START:java_import
java_import java.lang.StringBuffer
java_import 'java.lang.StringBuffer'
# END:java_import

require 'jemmy.jar'

# START:import_string
['Frame', 'Dialog', 'Button'].each do |name|
  java_import "org.netbeans.jemmy.operators.J#{name}Operator"
end
# END:import_string

# START:import_block
java_import 'java.lang.String' do |pkg, cls|
  puts "#{cls} lives in #{pkg}"
  'JString' # don't clobber Ruby's String class
end
# END:import_block
# >> Using org.netbeans.jemmy.drivers.APIDriverInstaller driver installer
# >> String lives in java.lang
