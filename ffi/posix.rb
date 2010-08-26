require 'ffi'


# START:functions
module POSIX
  extend FFI::Library
  ffi_lib 'c'

  attach_function :alarm,     [:uint], :uint
  attach_function :sigaction, [:int, :pointer, :pointer], :int

  # remaining definitions will go here...
end
# END:functions


module POSIX
  # START:callbacks
  callback :handler_func, [:int], :void
  callback :action_func,  [:int, :pointer, :pointer], :void
  # END:callbacks

  # START:data
  class SigActionU < FFI::Union
    layout :sa_handler, :handler_func,
           :sa_action,  :action_func
  end

  typedef  :int,        :sigset_t

  class SigAction < FFI::Struct
    layout :sa_action_u, SigActionU,
           :sa_flags,    :int,
           :sa_mask,     :int
  end
  # END:data
end


# START:setup
handler = FFI::Function.new(:void, [:int]) { |i| puts 'RING!' }

action = POSIX::SigAction.new
action[:sa_action_u][:sa_handler] = handler
action[:sa_flags] = 0
action[:sa_mask] = 0

out = POSIX::SigAction.new
# END:setup


# START:main
SIGALRM = 14
POSIX.sigaction SIGALRM, action, out
POSIX.alarm 1

puts 'Going to bed'
sleep 2
puts 'Breakfast time'
# END:main
