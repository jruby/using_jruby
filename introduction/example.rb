puts "So, how are you liking the pace so far?"

pace = loop do
  puts "(1) Move it along"
  puts "(2) Just right"
  puts "(3) Not so fast!"

  res = gets.to_i
  break res if (1..3).include? res
end

puts (pace == 2) ?
  "Great; see you in the next section" :
  "Thanks; we'll see what we can do"
