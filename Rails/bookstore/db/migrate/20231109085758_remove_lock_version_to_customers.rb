class RemoveLockVersionToCustomers < ActiveRecord::Migration[7.1]
  def change
    remove_column :customers, :lock_version, :integer
  end
end
