class AddCountryRefToSellers < ActiveRecord::Migration[7.1]
  def change
    add_reference :sellers, :country, null: false, foreign_key: true
  end
end
