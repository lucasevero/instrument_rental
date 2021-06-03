class AddNameToOffers < ActiveRecord::Migration[6.0]
  def change
    add_column :offers, :name, :string
  end
end
