require 'rubygems'
require 'active_record'

# START:connect
ActiveRecord::Base.establish_connection(
  :adapter => 'jdbc',
  :jndi => 'jdbc/using_jruby',
  :driver => 'com.mysql.jdbc.Driver'
)
# END:connect

ActiveRecord::Base.connection.execute("CREATE TABLE FOO1(id INTEGER)")
p ActiveRecord::Base.connection.execute("SHOW TABLES")
