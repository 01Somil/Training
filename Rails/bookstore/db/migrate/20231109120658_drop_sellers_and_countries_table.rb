class DropSellersAndCountriesTable < ActiveRecord::Migration[7.1]
  def change
    drop_table :sellers 
    drop_table :countries
  end
end
