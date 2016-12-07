module TasksHelper
  def category_link_color(category)
    if category.name == 'house'
      "blue"
    end
  end
end
