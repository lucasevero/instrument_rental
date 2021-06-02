class AddAvailableToOffers < ActiveRecord::Migration[6.0]
  def change
    add_column :offers, :available, :string, default: 'pending'
  end
end
