class TimelineController < ApplicationController
    before_action :authenticate_user!, except: :index
    def index
        @blogs=Blog.all.reverse
        if user_signed_in?  
        @myblogs = Blog.where(user_id:current_user.id)
        end
    end
    def write
        Blog.create(user_id:current_user.id,content:params[:naeyoung])
        redirect_to :root
    end
    def comment
        Comment.create(user_id:current_user.id,blog_id:params[:blogid],msg:params[:comment])
        redirect_to :root
    end
end
