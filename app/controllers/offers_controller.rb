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
    convert_integer_to_cents(@offer)

    @offer.user = current_user
    if @offer.save
      redirect_to offer_path(@offer)
    else
      render 'new'
    end
  end
  
  def convert_cents_to_integer(offer)
    offer.price / 100
  end
  
  private
  
  def convert_integer_to_cents(offer)
    offer.price *= 100
  end

  def offer_params
    params.require(:offer).permit(:instrument, :price, :location, photos: [])
  end
end
