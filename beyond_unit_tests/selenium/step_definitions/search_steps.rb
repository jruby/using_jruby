Given /^I am on the search home page$/ do
  $browser.open 'http://www.yahoo.com'
end

When /^I search for "([^\"]*)"$/ do |term|
  $browser.type 'p', term
  $browser.click 'search-submit'
  $browser.wait_for_page_to_load 10
end

Then /^the page title should begin with "([^\"]*)"$/ do |title|
  $browser.get_title[0...title.length].should == title
end
