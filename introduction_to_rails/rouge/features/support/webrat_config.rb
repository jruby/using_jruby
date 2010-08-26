Webrat.configure do |config|
  config.mode = :rack
end

require 'webrat/core/methods'

World Webrat::Methods
World Rack::Test::Methods
