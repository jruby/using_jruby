Given /^I am on the Google home page$/ do
  $browser.goto 'http://www.google.com/webhp'
end

When /^I search for "([^\"]*)"$/ do |term|
  $browser.text_field(:name, 'q').set term
  $browser.button(:name, 'btnG').click
  $browser.wait
end

Then /^the page title should be "([^\"]*)"$/ do |title|
  $browser.title.should == title
end
