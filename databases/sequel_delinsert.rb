require 'rubygems'
require 'sequel'

url = 'jdbc:mysql://localhost:3306/using_jruby?user=root&password='
DB = Sequel.connect(url)

blogs = DB[:blogs]

blogs.insert(:name => 'Databases', 
             :author => 'Pramod Sadalage')

blogs.filter(:name => 'Databases').delete
