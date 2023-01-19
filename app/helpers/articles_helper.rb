module ArticlesHelper
  def next_direction
    params[:direction] == 'asc' ? 'desc' : 'asc'
  end

  def sort_link(column:, label:)
    link_to(label, list_articles_path(column: column, direction: next_direction))
  end

  def sort_indicator
    tag.span(class: "sort sort-#{params[:direction]}")
  end
end
