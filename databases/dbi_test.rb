require 'rubygems'
require 'dbi'

DBI.connect('DBI:Jdbc:mysql://localhost/using_jruby', 
            'root', 
            '',
            'driver'=>'com.mysql.jdbc.Driver') do |dbh|
  p dbh.select_all('SELECT * FROM foo')
end
