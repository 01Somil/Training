class ChangeGstnColumnTypeFromSellers < ActiveRecord::Migration[7.1]
  def change
    change_column :sellers, :gstn, :text
  end
end
