class VotesController < ApplicationController

 def create
    type = params[:votable_type][0...-1].capitalize
    @vote = Vote.new(votable_type: type, votable_id: params[:id], user_id: session[:id])
    p @vote
    @vote.save

    if type == "Comment"
      @article = Comment.find(params[:id]).article
    else
      @article = Article.find(params[:id])
    end

    redirect_to [@article, :comments]

  end

end
