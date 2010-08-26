require 'rubygems'
require 'active_record'

ActiveRecord::Base.establish_connection(
  :adapter => 'jdbc',
  :driver => 'com.mysql.jdbc.Driver',
  :url => 'jdbc:mysql://localhost/using_jruby',
  :username => 'root',
  :password => ''
)

ActiveRecord::Base.connection.execute("CREATE TABLE FOO1(id INTEGER)")
p ActiveRecord::Base.connection.execute("SHOW TABLES")
