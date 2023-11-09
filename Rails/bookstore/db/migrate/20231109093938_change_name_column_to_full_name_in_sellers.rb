class ChangeNameColumnToFullNameInSellers < ActiveRecord::Migration[7.1]
  def change
    change_table :sellers do |t|
      t.remove :name 
      t.column :full_name, :string
    end
  end
end
