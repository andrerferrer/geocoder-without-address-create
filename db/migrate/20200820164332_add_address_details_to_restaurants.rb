class AddAddressDetailsToRestaurants < ActiveRecord::Migration[6.0]
  def change
    add_column :restaurants, :street, :string
    add_column :restaurants, :city, :string
    add_column :restaurants, :country, :string
  end
end
