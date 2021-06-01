class AddPictureToOffers < ActiveRecord::Migration[6.0]
  def change
    add_column :offers, :picture_url, :string
  end
end
