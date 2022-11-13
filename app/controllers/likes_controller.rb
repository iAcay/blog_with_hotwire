class LikesController < ApplicationController
  def create
    article = Article.find(params[:article])
    user = User.find(params[:user])
    like = Like.new(article: article, user: user)

    like.save
    redirect_to articles_path
  end
end
