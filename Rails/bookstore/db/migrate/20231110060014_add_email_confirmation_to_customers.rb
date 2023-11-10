class AddEmailConfirmationToCustomers < ActiveRecord::Migration[7.1]
  def change
    add_column :customers, :email_confirmation, :string
  end
end
