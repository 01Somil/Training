class RemoveReferenceFromSellersCountries < ActiveRecord::Migration[7.1]
  def change
    remove_reference :sellers, :country
  end
end
