class SessionsController < ApplicationController

  def new
    user = User.new
  end

  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_url, notice: "Logged in!"
    else
      flash.now[:danger] = "Email or password is invalid"
      render "new"
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:danger] = "Logged out!"
    redirect_to root_url

  end
end
