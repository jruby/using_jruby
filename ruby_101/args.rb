# START:optional
def you_gave_me(present = nil)
  present
end

you_gave_me          # => nil
you_gave_me "a pony" # => "a pony"
# END:optional

# START:calculated
def area(width = 10, height = 2 * width)
  width * height
end

area       # => 200
area 5     # => 50
area 5, 20 # => 100
# END:calculated

# START:rest
def quote(person, *words)
  person + ' says: "' + words.join(' ') + '"'
end

quote 'Ola'                    # => "Ola says: \"\""
quote 'Ola', 'keep', 'coding!' # => "Ola says: \"keep coding!\""
# END:rest

# START:splat
def something(needs, three, arguments)
  'Yay!'
end

my_array = ['one', 'two', 'three']

something(my_array)  # ~> ArgumentError
something(*my_array) # => 'Yay'
# END:splat
