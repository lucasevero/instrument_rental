class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def profile
    @user = User.find_by(username: params[:username])
    authorize @user
  end

  def manage
    @user = current_user
    authorize @user
    @my_requests = Deal.where(user: current_user)
    @pending_requests = []
    @user.offers.each do |offer|
      offer.deals.each { |deal| @pending_requests << deal if deal.status == 'pending' }
    end
  end
end
