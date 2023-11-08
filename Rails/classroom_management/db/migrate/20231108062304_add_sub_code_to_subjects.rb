class AddSubCodeToSubjects < ActiveRecord::Migration[7.1]
  def change
    add_column :subjects, :sub_code, :string
    add_index :subjects, :sub_code
  end
end
