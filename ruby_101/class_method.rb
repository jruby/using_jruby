# START:self
class Person
  def self.with_address_and_phone_number(addr, ph)
    p = Person.new
    p.add_address(addr)
    p.add_phone_number(ph)
    p
  end
end
# END:self

# START:class
# The following can appear between "class Person ..." and "end",
# or it can stand alone, outside the class definition.
#
def Person.with_address_and_phone_number(addr, ph)
  # ...
end
# END:class
