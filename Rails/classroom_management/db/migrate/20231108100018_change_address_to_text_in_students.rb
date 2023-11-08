class ChangeAddressToTextInStudents < ActiveRecord::Migration[7.1]
  def change
    change_column :students, :address, :text
  end
end
