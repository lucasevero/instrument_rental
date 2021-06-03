class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def profile
    @user = User.find_by(username: params[:username])
  end

  def manage
    @user = current_user
    @my_deals = Deal.where(user: current_user)
  end
end
