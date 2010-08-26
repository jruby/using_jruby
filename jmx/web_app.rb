# START:bean
require 'rubygems'
require 'jmx'
require 'rmi'

class HitBean < RubyDynamicMBean
  def initialize(name, desc)
    super name, desc
    @hits = 0
  end

  def hit!
    @hits += 1
  end

  # rest of implementation goes here...
end
# END:bean

class HitBean
  # START:attributes
  r_attribute :hits, :int, 'Current hit count'

  operation 'Clear the hit count'
  returns :void
  def clear
    @hits = 0
  end
  # END:attributes
end

# START:server
port = 9999
url = "service:jmx:rmi:///jndi/rmi://localhost:#{port}/jmxrmi"

registry  = RMIRegistry.new port
server    = JMX::MBeanServer.new
connector = JMX::MBeanServerConnector.new url, server
connector.start

bean      = HitBean.new 'jruby.HitBean', 'Web app hits'
domain    = server.default_domain
server.register_mbean bean, "#{domain}:type=HitBean"

at_exit do
  connector.stop
  registry.stop
end
# END:server

# START:web
require 'sinatra'

get '/' do
  bean.hit!
  "We're watching you"
end
# END:web
