def bio(details)
  for key, value in details
    puts "My #{key} is #{value}."
  end
end

bio :name     => "Nick",
    :location => "Minneapolis",
    :drink    => "tea",
    :quest    => "JRuby"

# Prints:
#   My name is Nick.
#   My location is Minneapolis.
#   My drink is tea.
#   My quest is JRuby.
