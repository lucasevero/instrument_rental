class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def profile
    @user = User.where(username: params[:username])
  end

  def manage
    @user = current_user
  end
end
