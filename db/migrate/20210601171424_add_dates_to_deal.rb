class AddDatesToDeal < ActiveRecord::Migration[6.0]
  def change
    add_column :deals, :start_date, :date
    add_column :deals, :end_date, :date
  end
end
