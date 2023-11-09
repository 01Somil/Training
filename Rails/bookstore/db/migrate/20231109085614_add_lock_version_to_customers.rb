class AddLockVersionToCustomers < ActiveRecord::Migration[7.1]
  def change
    add_column :customers, :lock_version, :integer
  end
end
