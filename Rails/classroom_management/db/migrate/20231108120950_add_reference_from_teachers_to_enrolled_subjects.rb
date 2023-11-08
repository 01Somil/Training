class AddReferenceFromTeachersToEnrolledSubjects < ActiveRecord::Migration[7.1]
  def change
    add_column :enrolled_subjects, :teacher_id, :integer, null: false
    add_foreign_key :enrolled_subjects, :teachers
  end
end
