$CLASSPATH ||= []

# START:classpath_jar
$CLASSPATH << '/usr/local/lib/jemmy/jemmy.jar'
# END:classpath_jar

# START:require_jar
require '/usr/local/lib/jemmy/jemmy.jar'
# END:require_jar

# START:load_path
$LOAD_PATH << '/usr/local/lib/jemmy'
require 'jemmy.jar'
# END:load_path
