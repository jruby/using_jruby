require 'java'
require 'consumer.jar'

java_import 'Consumer'

# START:oops
consumer = Consumer.new
# ~> Consumer.java:2:in `<init>': java.lang.NoClassDefFoundError:
# ~>    Producer (NativeException)
# ~> 	...
# ~> 	from -:7
# END:oops
