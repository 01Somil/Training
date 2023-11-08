class AddForeignKeyToEnrolledSubjects < ActiveRecord::Migration[7.1]
  def change
    add_foreign_key :enrolled_subjects, :subjects 
    add_foreign_key :enrolled_subjects, :students, column: :roll_no
  end
end
