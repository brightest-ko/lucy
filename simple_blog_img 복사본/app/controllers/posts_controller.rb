class PostsController < ApplicationController
  def index
    @posts=Post.all.reverse
  end

  def create
    Post.create(content:params[:content],
                image:params[:image])
    redirect_to :root
  end
end
