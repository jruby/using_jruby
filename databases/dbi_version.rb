require 'rubygems'
require 'dbi'

DBI.connect('DBI:Jdbc:mysql://localhost/using_jruby', 
            'root', 
            '',
            'driver'=>'com.mysql.jdbc.Driver') do |dbh|
  row = dbh.select_one('SELECT VERSION()')
  puts "Server version: #{row[0]}"
end
