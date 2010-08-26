# Assume @foo doesn't exist yet.

@foo ||= 42

puts @foo # >> 42

# The next line will not do anything,
# since @foo already has a true value.

@foo ||= 25

puts @foo # >> 42
