module ChapterList
  def repopulate
    remove_all
    production = scene.production
    build do
      production.chapter_contents.each do |chapter_model|
        chapter :text => chapter_model[:title],
                :model => chapter_model,
                :id => "chapter_#{chapter_model[:title]}"
      end
    end
    update_selection
  end

  def update_selection
    selected = scene.dual_pane.current_chapter
    select(selected[:title]) if selected
  end

  def select(chapter, click_mouse=false)
    children.each { |prop| prop.deselect! }
    chapter = scene.find "chapter_#{chapter}"
    if chapter
      chapter.select!
      chapter.mouse_clicked(nil) if click_mouse
    end
  end
end
