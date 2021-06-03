class OffersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  before_action :set_and_authorize_offer, only: [:show, :edit, :update, :destroy]


  def index
    @offers = Offer.all
  end

  def show
    @deal = Deal.new
  end

  def new
    @offer = Offer.new
    authorize @offer
  end

  def create
    @offer = Offer.new(offer_params)
    authorize @offer
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

  def edit
  end

  def update
    if @offer.update(offer_params)
      redirect_to offer_path(@offer)
    else
      render :edit
    end
  end

  def destroy
    @offer.destroy

    redirect_to offers_path
  end

  private
  
  def convert_integer_to_cents(offer)
    offer.price *= 100
  end

  def set_and_authorize_offer
    @offer = Offer.find(params[:id])
    authorize @offer
  end

  def offer_params
    params.require(:offer).permit(:instrument, :price, :location, :available, :description, :photos => [])
  end
end
