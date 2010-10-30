module AddChapter
  def mouse_clicked(e)
    contents    = production.chapter_contents
    title       = (contents.length + 1).to_s
    new_content = {:title => title, :text => ''}
    contents << new_content

    scene.chapter_list.repopulate
  end
end
