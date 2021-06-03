class AddOverviewToOffers < ActiveRecord::Migration[6.0]
  def change
    add_column :offers, :overview, :string
  end
end
