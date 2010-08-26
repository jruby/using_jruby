require 'java'
require 'waveform_with_sigs'

java_import 'org.junit.Test'

class TestWaveform
  java_annotation 'Test'
  java_signature  'void testRms()'
  def test_rms
    dc = [1.0]
    rms = Waveform.new(dc).rms
    org.junit.Assert.assert_equals rms, 1.0, 0.001
  end
end
