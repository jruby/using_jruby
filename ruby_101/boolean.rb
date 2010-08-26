# START:basic
def truthy?(value)
  if value then true else false end
end

truthy? true  # => true
truthy? false # => false
truthy? nil   # => false
# END:basic

# START:advanced
truthy? ""    # => true
truthy? []    # => true
truthy? 0     # => true
# END:advanced
