class ArticlesController < ApplicationController
  before_action :authenticate_user!
  load_and_authorize_resource

  def index
    @articles = Article.all
  end

  def list
    @articles = Article.all
    @articles = @articles.search_by_name(params[:name]) if params[:name].present?
    @articles = @articles.sorted(params[:column], params[:direction])
    render(partial: 'articles', locals: { articles: @articles })
  end
end
