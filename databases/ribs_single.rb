require 'rubygems'
require 'ribs'

Ribs::DB.define do |db|
  db.dialect = 'MySQL'
  db.uri = 'jdbc:mysql://localhost:3306/using_jruby?user=root&password='
  db.driver = 'com.mysql.jdbc.Driver'
end

class Book
  attr_accessor :id, :title, :author
end

book = R(Book).get(1)
book.title = "The bishops bird stump"
R(book).save


R(Book).create :id => 4, 
               :title => "Godel, Escher, Bach",
               :author => "Douglas Hofstadter"


book = Book.new
book.id = 5
book.title = "Snow Crash"
book.author = "Neal Stephenson"
R(book).save

R(book).destroy!
