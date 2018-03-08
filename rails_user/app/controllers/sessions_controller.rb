class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:email].downcase)
    #find는 값이 없으면 에러가 남 #소문자 치환
    if user && user.authenticate(params[:password])
      log_in user
      redirect_to :root
    else
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to :root
  end

end
