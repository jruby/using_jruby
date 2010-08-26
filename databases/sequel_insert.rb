require 'rubygems'
require 'sequel'

url = 'jdbc:mysql://localhost:3306/using_jruby?user=root&password='
DB = Sequel.connect(url)

DB << "INSERT INTO blogs (name, author) VALUES('Music', '_why')"
