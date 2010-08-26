require 'rubygems'
require 'sequel'

url = 'jdbc:mysql://localhost:3306/using_jruby?user=root&password='
DB = Sequel.connect(url)

class Blog < Sequel::Model
end

blog = Blog[1]
p blog
