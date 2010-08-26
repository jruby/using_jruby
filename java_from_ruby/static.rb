require 'java'

# START:java_name
java_import java.lang.System
System.currentTimeMillis # => 1251075795138
# END:java_name

# START:ruby_name
java_import java.lang.System
System.current_time_millis # => 1251075795172
# END:ruby_name

factory = nil

# START:capital_name
java_import java.net.URL
# assume you've initialized some object "factory" here
URL.setURLStreamHandlerFactory(factory)
URL.set_urlstream_handler_factory(factory)
# END:capital_name

# START:fields
java_import java.util.logging.Logger
java_import java.util.logging.Level

Logger.global.log Level::SEVERE, "It looks like you're writing a letter!"
# END:fields
