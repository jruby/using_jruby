class Waveform
  def initialize(points)
    @points = points
  end

  def rms
    raise 'No points' unless @points.length > 0
    squares = @points.map {|p| p * p}
    sum     = squares.inject {|s, p| s + p}
    mean    = sum / squares.length
    Math.sqrt(mean)
  end
end
