def tell_me_about(value)
  case value
  when 0..9
    puts "It's a one-digit number"
  when Fixnum
    puts "It's an integer"
  when /[A-Z]{2}/
    puts "It's two capital letters"
  when String
    puts "It's a string"
  else
    puts "Don't know what it is"
  end
end
