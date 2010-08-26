Given /^I am on the Google home page$/ do
  $browser.open 'http://www.google.com/webhp'
end

When /^I search for "([^\"]*)"$/ do |term|
  $browser.type 'q', term
  $browser.click 'btnG'
  $browser.wait_for_page_to_load 5000
end

Then /^the page title should be "([^\"]*)"$/ do |title|
  $browser.get_title.should == title
end
