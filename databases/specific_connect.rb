require 'rubygems'
require 'active_record'

# START:connect
ActiveRecord::Base.establish_connection(
  :adapter => 'jdbcmysql',
  :database => 'using_jruby',
  :host => 'localhost',
  :username => 'root',
  :password => ''
)
# END:connect

ActiveRecord::Base.connection.execute("CREATE TABLE FOO1(id INTEGER)")
p ActiveRecord::Base.connection.execute("SHOW TABLES")
