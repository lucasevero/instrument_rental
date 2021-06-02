class ChangePriceTypeToOffers < ActiveRecord::Migration[6.0]
  def change
    change_column :offers, :price, :integer
  end
end
