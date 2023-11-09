class DropJoinTableSellerCountries < ActiveRecord::Migration[7.1]
  def change
    drop_join_table :sellers, :countries
  end
end
