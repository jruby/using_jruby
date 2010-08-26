require 'java'

java_import  'java.io.PrintStream'

class Waveform
  # ... other methods here ...

  java_signature 'void print(PrintStream)'
  def print(stream)
    stream.write("The RMS is #{rms}")
  end
end
