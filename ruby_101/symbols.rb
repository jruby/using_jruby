def exact_same_object?(a, b)
  a.id == b.id
end

# All occurrences of the same Symbol
# share the same instance:

a_class       = :String
another_class = :String

exact_same_object?(a_class, another_class) # => true

# Each string literal creates its own
# separate instance of String:

fake_cheese = "String"
cat_toy     = "String"

exact_same_object?(fake_cheese, cat_toy)   # => false
