require 'rubygems'
require 'ribs'

Ribs::DB.define do |db|
  db.dialect = 'MySQL'
  db.uri = 'jdbc:mysql://localhost:3306/using_jruby?user=root&password='
  db.driver = 'com.mysql.jdbc.Driver'
end
