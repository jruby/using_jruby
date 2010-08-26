require 'waveform'

sine_wave = (0..360).map do |degrees|
  radians = degrees * Math::PI / 180.0
  Math.sin radians
end

waveform = Waveform.new sine_wave

puts waveform.rms
# >> 0.706126729736776
