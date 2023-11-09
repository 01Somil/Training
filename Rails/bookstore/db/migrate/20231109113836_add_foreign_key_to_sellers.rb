class AddForeignKeyToSellers < ActiveRecord::Migration[7.1]
  def change
    add_foreign_key :sellers, :countries
  end
end
