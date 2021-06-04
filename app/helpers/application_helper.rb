module ApplicationHelper
  def convert_cents_to_integer(offer)
    offer.price / 100
  end
end
