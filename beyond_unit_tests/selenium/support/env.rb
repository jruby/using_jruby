require 'selenium'

$browser = Selenium::SeleniumDriver.new("localhost",
                                        4444,
                                        "*firefox",
                                        "http://www.google.com",
                                        15000)

$browser.start

at_exit {$browser.stop}
