require 'java'
java_import java.net.URL
java_import 'URLDemo'

def add_url_to_some_ruby_list(url)
end

# START:main
url = URL.new 'http://pragprog.com/titles'

add_url_to_some_ruby_list(url)

URLDemo.retrieve_url url
# => "big list of book titles"
# END:main
