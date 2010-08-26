require 'rubygems'
require 'rubeus'
require 'java'
require 'worldwind.jar'

include Rubeus::Swing

java_import 'java.awt.Font'
java_import 'gov.nasa.worldwind.BasicModel'
java_import 'gov.nasa.worldwind.awt.WorldWindowGLCanvas'
java_import 'gov.nasa.worldwind.geom.Position'
java_import 'gov.nasa.worldwind.layers.AnnotationLayer'
java_import 'gov.nasa.worldwind.render.GlobeAnnotation'

def add_text(layer, text, lat, lon)
  position = Position.from_degrees lat, lon, 0
  font = Font.decode 'Arial-BOLD-18'
  annotation = GlobeAnnotation.new text, position, font
  layer.add_annotation annotation
end

JFrame.new('JRuby Authors') do |frame|
  frame.size = '800 x 600'

  layer = AnnotationLayer.new
  add_text layer, "Ian",                45.5374054, -122.65028
  add_text layer, "Tom\nNick\nCharlie", 44.9624634,  -93.267307
  add_text layer, "Ola",                59.3333,      18.0833

  model = BasicModel.new
  model.layers.add layer

  canvas = WorldWindowGLCanvas.new
  canvas.set_model model

  frame.show
end
