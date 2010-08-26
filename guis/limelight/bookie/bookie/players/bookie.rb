module Bookie
  prop_reader :chapter_list, :dual_pane
  prop_reader :preview_pane, :edit_pane
  prop_reader :preview_tab, :edit_tab

  def scene_opened(e)
    chapter_list.repopulate
    chapter_list.select(1, true)
    dual_pane.edit!
  end
end
