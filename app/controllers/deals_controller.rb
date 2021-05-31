class DealsController < ApplicationController
  def new
    @deal = Deal.new
  end

  def create
    @deal = Deal.new(offer_id: params[:offer_id])
    @deal.user = current_user
    if @deal.save
      redirect_to offer_path(@deal.offer)
    else
      render 'offer/show'
    end
  end

  def index
    @deals = current_user.deals
  end

  def approve
    @deal = Deal.find(params[:id])
    @deal.status = 'approved'
    if @deal.update
      redirect_to deals_path
    else
      render 'deals/index'
    end
  end

  def deny
    @deal = Deal.find(params[:id])
    @deal.status = 'denied'
    if @deal.update
      redirect_to deals_path
    else
      render 'deals/index'
    end
  end
end
