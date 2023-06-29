# articles_controller.rb
class ArticlesController < ApplicationController
  def show
    article = Article.find(params[:id])
    increment_page_views
    render json: article
  end

  private

  def increment_page_views
    session[:page_views] ||= 0
    session[:page_views] += 1
  end
end
