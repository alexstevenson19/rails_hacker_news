class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    @article.poster_id = 1
    if @article.save
      p @article
      redirect_to articles_path
    else
      render 'new'
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

private

  def article_params
    params.require(:article).permit(:title, :link)
  end

end
