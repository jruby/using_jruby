module Chapter
  attr_accessor :model

  def mouse_clicked(e)
    scene.dual_pane.current_chapter = @model
  end

  def select!
    style.background_color = :sky_blue
  end

  def deselect!
    style.background_color = :white
  end
end
