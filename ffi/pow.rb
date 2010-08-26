require 'ffi'

module CMath
  extend FFI::Library
  ffi_lib 'libm'

  attach_function :pow, [:double, :double], :double
end

puts CMath.pow(2.0, 8.0) # >> 256.0
