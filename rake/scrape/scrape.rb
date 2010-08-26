require 'rubygems'
require 'open-uri'
require 'hpricot'

doc = open('http://pragprog.com/categories/upcoming') do |page|
  Hpricot page
end

(doc/'div.book').each do |book|
  title = book.at('div.details/h4').inner_html
  href  = book.at('div.thumbnail/a')['href']

  puts "#{title} is at #{href}"
end
