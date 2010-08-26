root do
  center do
    chapter_list :id => 'chapter_list'
    dual_pane :id => 'dual_pane' do
      tabs do
        tabs_shadow
        tabs_holder do
          # START:tab_buttons
          tab_button :text             => 'Edit',
                     :id               => 'edit_tab',
                     :on_mouse_clicked => 'scene.dual_pane.edit!',
                     :styles           => 'left_tab'
          tab_button :text             => 'Preview',
                     :id               => 'preview_tab',
                     :on_mouse_clicked => 'scene.dual_pane.preview!',
                     :styles           => 'right_tab'
          # END:tab_buttons
        end
      end
      preview_pane :id => 'preview_pane'
      edit_pane :players => 'text_area',
      :id => 'edit_pane'
    end
  end
  add_chapter :text => 'Add Chapter'
end
