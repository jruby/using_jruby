def get_number_from_somewhere; 2 end

# START:conditional
# Ruby:
puts case get_number_from_somewhere
     when 2 then 'twins'
     when 3 then 'triplets'
     when 4 then 'quadruplets'
     else        'unknown'
     end
# END:conditional
