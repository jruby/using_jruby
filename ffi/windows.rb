require 'ffi'

module User32
  extend FFI::Library
  ffi_lib        'user32'
  ffi_convention :stdcall

  typedef :pointer, :hwnd

  attach_function :GetForegroundWindow, [], :hwnd
  attach_function :GetWindowTextA, [:hwnd, :pointer, :int], :int
end

FFI::MemoryPointer.new(:char, 1000) do |buffer|
  hwnd = User32.GetForegroundWindow
  User32.GetWindowTextA hwnd, buffer, buffer.size
  p buffer.get_string(0)
  # >> "jruby - Cmd"
end
