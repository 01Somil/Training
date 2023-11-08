class AddSecondForeignKeyToEnrolledSubjects < ActiveRecord::Migration[7.1]
  def change
    add_column :enrolled_subjects, :subject_id, :integer
    add_foreign_key :enrolled_subjects, :subjects
  end
end
