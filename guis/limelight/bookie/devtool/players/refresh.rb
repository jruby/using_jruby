module Refresh
  def mouse_clicked(e)
    production.theater.stages.map do |stage|
      scene = stage.current_scene
      production.producer.open_scene(scene.name, stage) if scene
    end
  end
end
