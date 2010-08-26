pattern = /([^,]+), ([A-Z]{2}) (\d{5})/

if "Portland, OR 97201" =~ pattern
  puts 'Yay, it matches!'
  puts 'City  ' + $1
  puts 'State ' + $2
  puts 'ZIP   ' + $3
end
