class AddDefaultValueToDeal < ActiveRecord::Migration[6.0]
  def change
    change_column_default :deals, :status, 'pending'
  end
end
