Given /^I am on the search home page$/ do
  $browser.goto 'http://www.yahoo.com'
end

When /^I search for "([^\"]*)"$/ do |term|
  $browser.text_field(:name, 'p').set term
  $browser.button(:id, 'search-submit').click
  $browser.wait
end

Then /^the page title should begin with "([^\"]*)"$/ do |title|
  $browser.title[0...title.length].should == title
end
