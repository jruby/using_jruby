require 'java'

java_import java.sql.DriverManager
java_import java.sql.ResultSet

DriverManager.register_driver(com.mysql.jdbc.Driver.new)

module ResultSet
  include Enumerable

  def each
    count = self.meta_data.column_count
    while self.next
      yield((1..count).map { |n| self.get_object(n) })
    end
  end
end

begin
  url = "jdbc:mysql://localhost/using_jruby"
  conn = DriverManager.get_connection(url, "root", "")
  stmt = conn.create_statement

  p stmt.execute_query("SELECT * FROM book").to_a

ensure
  stmt.close rescue nil
  conn.close rescue nil
end
