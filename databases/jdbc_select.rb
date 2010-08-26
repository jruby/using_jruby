require 'java'

java_import java.sql.DriverManager

DriverManager.register_driver(com.mysql.jdbc.Driver.new)

begin
  url = "jdbc:mysql://localhost/using_jruby"
  conn = DriverManager.get_connection(url, "root", "")
  stmt = conn.create_statement
  rs = stmt.execute_query("SELECT * FROM book")

  while rs.next
    p [rs.get_int(1), rs.get_string(2), rs.get_string(3)]
  end

ensure
  rs.close rescue nil
  stmt.close rescue nil
  conn.close rescue nil
end

