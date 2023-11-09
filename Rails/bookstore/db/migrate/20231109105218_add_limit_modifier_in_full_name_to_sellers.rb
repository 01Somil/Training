class AddLimitModifierInFullNameToSellers < ActiveRecord::Migration[7.1]
  def change
    change_column :sellers, :full_name, :string, limit: 10
  end
end
