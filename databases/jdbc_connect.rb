require 'java'

java_import java.sql.DriverManager

DriverManager.register_driver(com.mysql.jdbc.Driver.new)

begin
  url = "jdbc:mysql://localhost/using_jruby"
  conn = DriverManager.get_connection(url, "root", "")
ensure
  conn.close rescue nil
end

