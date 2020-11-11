class UpdateColumnsInRestaurants < ActiveRecord::Migration[6.0]
  def change
    rename_column :restaurants, :adress, :address
    change_column :restaurants, :phone_number, :string
  end
end
