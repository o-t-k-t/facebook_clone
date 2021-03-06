class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)

    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      redirect_to user_path(user.id)
    else
      flash.now[:danger] = 'ユーザIDまたはパスワードが不正です'
      render :new
    end
  end

  def destroy
    log_out
    flash[:notice] = 'ログアウトしました'
    redirect_to new_session_path
  end
end
