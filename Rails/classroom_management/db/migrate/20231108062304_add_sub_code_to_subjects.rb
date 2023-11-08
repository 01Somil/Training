class AddSubCodeToSubjects < ActiveRecord::Migration[7.1]
  def change
    add_column :subjects, :sub_code, :string
  end
end
