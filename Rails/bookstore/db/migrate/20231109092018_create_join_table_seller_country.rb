class CreateJoinTableSellerCountry < ActiveRecord::Migration[7.1]
  def change
    create_join_table :sellers, :countries do |t|
      # t.index [:seller_id, :country_id]
      # t.index [:country_id, :seller_id]
    end
  end
end
