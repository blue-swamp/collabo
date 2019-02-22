class PostsController < ApplicationController
  def new 
  	@article = Article.new
  end

  def create

  end

  private
  def article_params
  	params.require(:article)
  end
end
