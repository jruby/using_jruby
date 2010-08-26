class BookieView < ApplicationView
  set_java_class 'bookie.Bookie'

  # START:edit
  map :view  => 'edit.text',
      :model => 'text'
  # END:edit

  # START:preview
  map :view  => 'preview.text',
      :model => 'text',
      :using => ['redcloth', nil]

  def redcloth(text)
    RedCloth.new(text).to_html
  end
  # END:preview

  # START:selection
  map :view  => 'chapters.selection_model.single_index',
      :model => 'index'
  # END:selection

  # START:items
  map :view  => 'chapters.model',
      :model => 'chapters',
      :using => ['list_items', nil]

  def list_items(chapters)
    items = DefaultListModel.new
    1.upto(chapters.size).each { |n| items.add_element n }
    items
  end
  # END:items

  define_signal :name    => :fix_selection,
                :handler => :fix_selection

  def fix_selection(model, transfer)
    chapters.selection_model.single_index = model.index
  end
end
