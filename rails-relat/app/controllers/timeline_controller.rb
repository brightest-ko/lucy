class TimelineController < ApplicationController
    def index
        @blogs=Blog.all.reverse
    end
    def write
        Blog.create(content:params[:naeyoung])
        redirect_to :root
    end
    def comment
        Comment.create(blog_id:params[:blogid],msg:params[:comment])
        redirect_to :root
    end
end
