class DealsController < ApplicationController
  def new
    @offer = Offer.find(params[:offer_id])
    @deal = Deal.new
  end

  def create
    @deal = Deal.new(deal_params)
    @offer = Offer.find(params[:offer_id])
    @deal.offer = @offer
    @deal.user = current_user
    if @deal.save
      redirect_to offer_path(@deal.offer)
    else
      render 'offers/show'
    end
  end

  def index
    @deals = current_user.deals
  end

  def approve
    @deals = current_user.deals
    @deal = Deal.find(params[:id])
    @deal.status = "approved"
    if @deal.save
      redirect_to deals_path(current_user.deals)
    else
      render 'deals/index'
    end
  end

  def deny
    @deals = current_user.deals
    @deal = Deal.find(params[:id])
    @deal.status = 'denied'
    if @deal.save
      redirect_to deals_path(current_user.deals)
    else
      render 'deals/index'
    end
  end

  private

  def deal_params
    params.require(:deal).permit(:start_date, :end_date)
  end
end
