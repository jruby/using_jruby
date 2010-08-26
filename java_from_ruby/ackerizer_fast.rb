require 'rubygems'
require 'java'
require 'rubeus'

include Rubeus::Swing

JFrame.new('Ackerizer') do |frame|
  frame.layout = java.awt.FlowLayout.new

  @m = JTextField.new '3'
  @n = JTextField.new '9'

  JButton.new('->') do
    # START:ack
    @result.text = Java::Ackermann.ack(@m.text.to_i,
                                       @n.text.to_i).to_s
    # END:ack
  end

  @result = JTextField.new 10

  frame.pack
  frame.show
end
