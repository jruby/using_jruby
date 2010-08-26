module Production
  attr_reader :chapter_contents

  def production_opening
    require 'redcloth'
    @chapter_contents = [{:title => '1', :text => ''}]
  end
end
