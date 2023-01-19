class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def list
    @articles = Article.all.order(params[:column] => params[:direction])
    render(partial: 'articles', locals: { articles: @articles })
  end
end
