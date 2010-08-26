require 'rubygems'
require 'ribs'

Ribs::DB.define do |db|
  db.dialect = 'MySQL'
  db.uri = 'jdbc:mysql://localhost:3306/using_jruby?user=root&password='
  db.driver = 'com.mysql.jdbc.Driver'
end

Ribs::with_handle do |h|
  h.ddl "DROP TABLE IF EXISTS book"

  h.ddl <<SQL
CREATE TABLE book (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  title VARCHAR(255) NOT NULL,
  author VARCHAR(255) NOT NULL,
  PRIMARY KEY (id)
)
SQL
  
  stmt = "INSERT INTO book(title, author) VALUES(?, ?)"
  h.insert(stmt, 
           ["To say nothing of the dog", "Connie Willis"],
           ["A confederacy of dunces", "John Kennedy Toole"],
           ["Ender's game", "Orson Scott Card"])

  p h.select("SELECT * FROM book")
end
