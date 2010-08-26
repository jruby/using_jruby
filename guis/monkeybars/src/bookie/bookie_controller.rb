class BookieController < ApplicationController
  set_model 'BookieModel'
  set_view 'BookieView'
  set_close_action :exit

  # START:add_chapter
  def add_chapter_action_performed
    model.text = view_model.text
    model.add_chapter
    update_view
  end
  # END:add_chapter

  # START:select_chapter
  def chapters_value_changed(e)
    unless e.value_is_adjusting
      new_index = e.source.get_selected_index
      old_index = [e.first_index, e.last_index].find { |i| i != new_index }

      if new_index >= 0 && old_index
        model.text = view_model.text
        model.switch_to_chapter new_index
        update_view
      end
    end
  end
  # END:select_chapter

  # START:select_tab
  def tabs_state_changed(e)
    model.text = view_model.text
    update_view
  end
  # END:select_tab

  # update_view causes the items inside the JList to change, which
  # means the list will forget the current selection. This code
  # re-writes the selected item index after the view updates.
  #
  alias_method :old_update_view, :update_view

  def update_view
    old_update_view
    signal :fix_selection
  end
end
