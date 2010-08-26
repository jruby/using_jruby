# START:background
Given /^I am logged in as an admin$/ do
  Administrator.create! :username => 'admin', :password => 'admin'
  basic_auth 'admin', 'admin'
end
# END:background

# START:given
Given /^the following restaurants:$/ do |restaurants|
  Restaurant.create!(restaurants.hashes)
end
# END:given

# START:when
When /^I add the following restaurants?:$/ do |restaurants|
  restaurants.hashes.each do |r|
    visit new_restaurant_path
    fill_in 'restaurant[name]', :with => r[:name]
    click_button 'Create'
  end
end
# END:when

# START:then
Then /^I should see the following restaurants:$/ do |expected|
  visit restaurants_path

  actual = table(tableish('table:nth-of-type(2) tr', 'td,th'))
  actual.map_headers! { |h| h.downcase }

  expected.diff! actual
end
# END:then
