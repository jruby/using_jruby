require 'java'
require 'rubygems'
require 'rubeus'

Rubeus::Swing.irb

# START:structure
JFrame.new('Bookie') do |frame|
  frame.layout = BoxLayout.new(:Y_AXIS)

  JSplitPane.new(JSplitPane::HORIZONTAL_SPLIT) do
    JList.new
    JScrollPane.new(:preferred_size => [400, 250]) do
      JTabbedPane.new(:TOP, :SCROLL_TAB_LAYOUT) do
        JTextPane.new
        JEditorPane.new
      end
    end
  end

  JButton.new('Add Chapter')
  frame.visible = true
end
# END:structure
