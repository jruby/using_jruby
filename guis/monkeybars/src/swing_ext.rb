java_import javax.swing.DefaultListModel
java_import javax.swing.DefaultListSelectionModel

class DefaultListSelectionModel
  def single_index
    get_min_selection_index
  end

  def single_index=(i)
    set_selection_interval i, i
  end
end
