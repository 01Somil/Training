class AddBelongsToSellersFromCountries < ActiveRecord::Migration[7.1]
  def change
    add_belongs_to :sellers, :country
  end
end
