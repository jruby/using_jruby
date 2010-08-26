class BookieModel
  attr_reader   :chapters
  attr_accessor :text, :index

  def initialize
    @chapters = ['']
    @text = ''
    @index = 0
  end

  def add_chapter
    @chapters << ''
    switch_to_chapter @chapters.size - 1
  end

  def switch_to_chapter(new_index)
    @chapters[@index], @text = @text, @chapters[new_index]
    @index = new_index
  end
end
