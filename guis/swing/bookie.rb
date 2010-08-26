# START:import
require 'java'
require 'rubygems'
require 'redcloth'

classes = %w(JFrame JButton JList
             JEditorPane JSplitPane JTabbedPane JTextPane
             DefaultListModel ListSelectionModel BoxLayout
             text.html.HTMLEditorKit)

classes.each do |c|
  java_import "javax.swing.#{c}"
end

java_import java.awt.Dimension
# END:import


# START:editable
edit    = JTextPane.new
preview = JEditorPane.new

preview.editable   = false
preview.editor_kit = HTMLEditorKit.new
preview.document   = preview.editor_kit.create_default_document
# END:editable


# START:chapters
chapters = JList.new(DefaultListModel.new)
chapters.selection_mode = ListSelectionModel::SINGLE_SELECTION

class << chapters
  def add_chapter
    count = model.size
    model.add_element count + 1
    selection_model.set_selection_interval count, count
  end
end

chapters.add_chapter
# END:chapters


# START:contents
contents = Hash.new('')

chapters.add_list_selection_listener do |e|
  unless e.value_is_adjusting
    # START:index
    new_index = e.source.get_selected_index
    old_index = [e.first_index, e.last_index].find { |i| i != new_index }
    # END:index

    # START:swap
    contents[old_index], edit.text = edit.text, contents[new_index]
    preview.text = RedCloth.new(edit.text).to_html
    # END:swap
  end
end
# END:contents


# START:tabbed_pane
tabbed_pane = JTabbedPane.new JTabbedPane::TOP, JTabbedPane::SCROLL_TAB_LAYOUT
tabbed_pane.add_tab 'Edit', edit
tabbed_pane.add_tab 'Preview', preview

tabbed_pane.add_change_listener do |event|
  if tabbed_pane.selected_component == preview
    preview.text = RedCloth.new(edit.text).to_html
  end
end
# END:tabbed_pane


# START:split_pane
split_pane = JSplitPane.new JSplitPane::HORIZONTAL_SPLIT
split_pane.add chapters
split_pane.add tabbed_pane
# END:split_pane


# START:button
button = javax.swing.JButton.new 'Add Chapter'
button.size = Dimension.new 40, 40
button.add_action_listener { chapters.add_chapter }
# END:button


# START:frame
frame = JFrame.new 'Bookie'
frame.size   = Dimension.new 500, 300
frame.layout = BoxLayout.new frame.content_pane, BoxLayout::Y_AXIS
frame.add split_pane
frame.add button
frame.visible = true
# END:frame
