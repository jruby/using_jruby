require 'java'
java_import java.util.Arrays
java_import java.util.LinkedList
java_import java.net.URI
java_import java.net.URL

# START:regex
java_import java.util.regex.Pattern
simple_us_phone = Pattern.compile "\\d{3}-\\d{3}-\\d{4}"
'Call 503-555-1212' =~ simple_us_phone # => 5
# END:regex

java_list = LinkedList.new(Arrays.as_list(['lock', 'stock', 'barrel'].to_java))

# START:index
# assume this came from some Java function
java_list.entries         # => ["lock", "stock", "barrel"]
first_item = java_list[0] # => "lock"
# END:index

# START:collection
java_list << 'crate'
java_list.join(',') # => "lock,stock,barrel,crate"
# END:collection

search_url = URL.new 'http://www.google.com'
upload_url = URL.new 'ftp://ftp.example.com'
java_list_of_urls = Arrays.as_list([search_url, upload_url].to_java)

# START:enumerable
# assume this came from some Java function
java_list_of_urls.entries
# => [#<Java::JavaNet::URL:0xacecf3>, #<Java::JavaNet::URL:0xf854bd>]

protocols = java_list_of_urls.map do |url|
  url.protocol
end
# => ["http", "ftp"]
# END:enumerable

# START:comparable
uris = [URI.new('/uploads'),
        URI.new('/images'),
        URI.new('/stylesheets')]
uris.sort.map {|u| u.to_string}
# => ["/images", "/stylesheets", "/uploads"]
# END:comparable

# START:runnable
runnable = java.lang.Thread.new
run_it = runnable.to_proc
Thread.new &run_it
# END:runnable

# START:io
java_out = java.lang.System.out.to_io
java_out << 'Hello from JRuby!'
# END:io

# START:exceptions
begin
  java.text.SimpleDateFormat.new(nil)
rescue java.lang.NullPointerException
  puts 'Ouch!'
end
# END:exceptions
