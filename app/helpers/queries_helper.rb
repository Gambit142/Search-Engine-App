module QueriesHelper
  def verify_or_create_query()
    name = params[:name].downcase
    query = Query.find_by(text: name)
    if query.present?
      query.update(search_counter: query.search_counter + 1)
    else
      query = Query.new(text: name, search_counter: 1)
      query.user = current_user
      if query.save
        flash[:notice] = "Query Successfully saved"
      else
        flash[:alert] = "Query not saved"
      end
    end
  end
end
