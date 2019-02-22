class ArticlesController < ApplicationController
  def new 
  	@article = Article.new
  end

  def create
  	@article = Article.new(article_params)
  	@article.save
  	if @article.save
      redirect_to articles_path
    else
      render 'new'
    end
   end

  def index
  	@articles = Article.all
    @article = Article.new
  end

  def show
  	@article = Article.find(params[:id])
    @articles = Article.all
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    @article.update(article_params)
    if @article.save
      redirect_to articles_path(article.id)
    else
      render articles_edit_path(article.id)
    end
  end

  def destroy
    article = Article.find(params[:id])
    article.destroy
    redirect_to articles_path
  end

  private

  def article_params
  	params.require(:article).permit(:title, :body, :weather, :image)
  end
  
end