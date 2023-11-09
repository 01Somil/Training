class RemoveForeignKeyToSellers < ActiveRecord::Migration[7.1]
  def change
    remove_foreign_key :sellers, :countries
  end
end
