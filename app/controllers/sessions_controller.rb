class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_username(params[:username])
    if user
      session[:user] = user.id
      redirect_to users_path, notice: "Logged in"
    else
      render "new", notice: "Invalid name"
    end
  end
end
