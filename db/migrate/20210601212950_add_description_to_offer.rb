class AddDescriptionToOffer < ActiveRecord::Migration[6.0]
  def change
    add_column :offers, :description, :text
  end
end
