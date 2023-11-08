class RemoveSubNumberFromSubjects < ActiveRecord::Migration[7.1]
  def change
    remove_column :subjects, :sub_number, :integer
  end
end
