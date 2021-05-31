class OffersController < ApplicationController
  def index
    @offers = Offer.all
  end

  def show
    @offer = Offer.find(params[:id])
  end

  def new
    @offer = Offer.new
  end

  def create
    raise
    @offer = Offer.new(offer_params)
    @user = User.find(params[:user_id])
    @offer.user = @user
    if @offer.save
      redirect_to offer_path(@offer)
    else
      render 'new'
    end
  end

  private

  def offer_params
    params.require(:offer).permit(:instrument, :price, :location)
  end
end
