require 'rubygems'
require 'dbi'

DBI.connect('DBI:Jdbc:mysql://localhost/using_jruby', 
            'root', 
            '',
            'driver'=>'com.mysql.jdbc.Driver') do |dbh|
  sth = dbh.prepare("INSERT INTO blogs (name, author) VALUES(?, ?)")

  sth.execute("Architecture", "Richard Gabriel")
  sth.execute("Physics", "Lee Smolin")
  sth.execute("Memes", "Richard Dawkins")

  sth.finish
end
