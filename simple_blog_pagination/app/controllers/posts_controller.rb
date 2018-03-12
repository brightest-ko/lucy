class PostsController < ApplicationController
  def index
    @posts=Post.paginate(:page => params[:page], :per_page => 30)
  end

  def create
    Post.create(content:params[:content],
                image:params[:image])
    redirect_to :root
  end
end
