require 'java'

java_package 'com.example'

class Waveform
  java_implements 'Runnable'

  # ... other methods here ...

  java_signature 'void run()'
  def run
    puts 'inside runnable implementation'
    puts rms
  end
end
