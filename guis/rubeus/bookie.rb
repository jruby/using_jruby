# START:import
require 'java'
require 'rubygems'
require 'rubeus'
require 'redcloth'

java_import javax.swing.DefaultListModel
java_import javax.swing.text.html.HTMLEditorKit

Rubeus::Swing.irb
# END:import

JFrame.new('Bookie') do |frame|
  # START:layout
  frame.layout = BoxLayout.new(:Y_AXIS)
  # END:layout

  JSplitPane.new(JSplitPane::HORIZONTAL_SPLIT) do

    # START:chapters
    @chapters = JList.new(DefaultListModel.new)
    @chapters.selection_mode = ListSelectionModel::SINGLE_SELECTION

    class << @chapters
      def add_chapter
        count = model.size
        model.add_element count + 1
        selection_model.set_selection_interval count, count
      end
    end

    @chapters.add_chapter
    # END:chapters


    # START:contents
    @contents = Hash.new('')

    @chapters.add_list_selection_listener do |e|
      unless e.value_is_adjusting
        new_index = e.source.get_selected_index
        old_index = [e.first_index, e.last_index].find { |i| i != new_index }
        @contents[old_index], @edit.text = @edit.text, @contents[new_index]
        @preview.text = RedCloth.new(@edit.text).to_html
      end
    end
    # END:contents

    # START:scrollpane
    # START:preferred_size
    JScrollPane.new(:preferred_size => [400, 250]) do |scroll|
      # END:preferred_size
      JTabbedPane.new(:TOP, :SCROLL_TAB_LAYOUT) do |tab|
        tab.add_change_listener do |event|
          if tab.selected_component == @preview
            @preview.text = RedCloth.new(@edit.text).to_html
          end
        end

        @edit    = JTextPane.new
        @preview = JEditorPane.new

        @preview.editable = false
        @preview.editor_kit = HTMLEditorKit.new
        @preview.document = @preview.editor_kit.create_default_document

        tab.set_titles ['Edit', 'Preview']
      end
    end
    # END:scrollpane
  end

  # START:button
  JButton.new('Add Chapter', :size => [40, 40]) { @chapters.add_chapter }
  frame.visible = true
  # END:button
end
