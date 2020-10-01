class SessionsController < ApplicationController
  def new; end

  def create
    user = User.find_by_email(params[:email])
    if user
      session[:user_id] = user.id
      redirect_to root_url, notice: 'You are successfully logged in!'
    else
      flash.now[:alert] = 'You email is not valid!'
      render 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: 'You are logged out!'
  end
end
