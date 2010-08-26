require 'rubygems'
require 'ribs'

Ribs::DB.define(:db1) do |db|
  db.dialect = 'MySQL'
  db.uri = 'jdbc:mysql://localhost:3306/using_jruby?user=root&password='
  db.driver = 'com.mysql.jdbc.Driver'
  db.default = true
  db.properties['hibernate.show_sql'] = 'true'
end
