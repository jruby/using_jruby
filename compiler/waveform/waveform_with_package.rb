require 'java'

# START:java_package
java_package 'com.example'
# END:java_package

class Waveform
  java_signature 'Waveform(double[] points)'
  def initialize(points)
    @points = points
  end

  java_signature 'double rms()'
  def rms
    raise 'No points' unless @points.length > 0
    squares = @points.map {|p| p * p}
    sum     = squares.inject {|s, p| s + p}
    mean    = sum / squares.length
    Math.sqrt(mean)
  end
end
