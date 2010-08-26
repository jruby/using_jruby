require 'rubygems'
require 'dbi'

DBI.connect('DBI:Jdbc:mysql://localhost/using_jruby', 
            'root', 
            '',
            'driver'=>'com.mysql.jdbc.Driver') do |dbh|
  sth = dbh.prepare("SELECT * FROM blogs")
  sth.execute

  while row = sth.fetch
    puts "Values from DB: #{row.inspect}"
  end

  sth.finish
end
