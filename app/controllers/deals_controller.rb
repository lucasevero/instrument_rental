class DealsController < ApplicationController

  def new
    @offer = Offer.find(params[:offer_id])
    @deal = Deal.new
  end

  def create
    @offer = Offer.find(params[:offer_id])
    @deal = Deal.new(deal_params)
    @deal.offer = @offer
    @deal.user = current_user
    authorize @deal
    if @deal.save
      redirect_to offer_path(@deal.offer), flash: { notice: 'Congratulations! We will notify you when the user respondes to your request'}
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
    authorize @deal
    if @deal.save
      redirect_to manage_profile_path(current_user), flash: { notice: 'Great! You might want to check your inbox!' }
    else
      render 'deals/index'
    end
  end

  def deny
    @deals = current_user.deals
    @deal = Deal.find(params[:id])
    @deal.status = 'denied'
    authorize @deal
    if @deal.save
      redirect_to manage_profile_path(current_user), flash: { alert: "Sorry for that! Maybe next time!" }
    else
      render 'deals/index'
    end
  end

  private

  def deal_params
    params.require(:deal).permit(:start_date, :end_date)
  end
end
