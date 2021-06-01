class OffersController < ApplicationController

  def index
    @offers = Offer.all
  end

  def show
    @offer = Offer.find(params[:id])
    @deal = Deal.new
  end

  def new
    @offer = Offer.new
  end

  def create
    @offer = Offer.new(offer_params)
    @offer.user = current_user
    if @offer.save
      redirect_to offer_path(@offer)
    else
      render 'new'
    end
  end

  private

  def offer_params
    params.require(:offer).permit(:instrument, :price, :location, photos: [])
  end
end
