class CommentsController < ApplicationController
  def index
    @article = Article.find(params[:article_id])
  end

  def new
  end

  def create
    p params
    @comment = Comment.new(comment_params)
    @comment.article_id = params[:article_id]
    @comment.commenter_id = 1

    @comment.save
    redirect_to [Article.find(params[:article_id]), :comments]
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
    comment = Comment.find(params[:id])
    comment.destroy
    redirect_to [Article.find(params[:article_id]), :comments]
  end

  private
  def comment_params
    params.require(:comment).permit(:content)
  end
end
