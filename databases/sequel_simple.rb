require 'rubygems'
require 'sequel'

url = 'jdbc:mysql://localhost:3306/using_jruby?user=root&password='
DB = Sequel.connect(url)

DB[:blogs].each do |row|
  p row
end

