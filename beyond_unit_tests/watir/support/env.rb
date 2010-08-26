require 'firewatir'

$browser = Watir::Browser.new

at_exit {$browser.close}
