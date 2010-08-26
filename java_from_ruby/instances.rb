java_import 'java.net.URL'

# START:constructors
URL.new 'http://pragprog.com/titles'
URL.new 'http', 'pragprog.com', '/titles'
# END:constructors

URL = URL.new 'http://pragprog.com/titles'

# START:methods
url.get_protocol # => "http"
# END:methods
