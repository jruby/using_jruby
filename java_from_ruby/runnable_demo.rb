# START:include
require 'java'
java_import java.lang.Runnable

class Foo
  include Runnable # <label id="code.runnable.include"/>

  def run
    puts "foo"
  end
end

callable = java.util.concurrent.Executors.callable(Foo.new)
callable.call
# END:include

# START:block
callable = java.util.concurrent.Executors.callable do
  puts "foo"
end

callable.call
# END:block

# START:proc
myproc = Proc.new { puts "foo" }
callable = java.util.concurrent.Executors.callable(myproc)

callable.call
# END:proc

java_import 'CollectionDemo'

# START:named
CollectionDemo.do_collection_stuff do |name, *args|
  puts "method #{name} called with args #{args}"
  case name
  when :size; return 0
  when :add; return false;
  end
end
# "method size called with args []"
# "method add called with args ["foo"]"
# END:named
