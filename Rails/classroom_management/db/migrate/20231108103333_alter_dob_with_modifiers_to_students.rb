class AlterDobWithModifiersToStudents < ActiveRecord::Migration[7.1]
  def change
    change_column :students, :dob, :date, default: Date.today, null: false
  end
end
