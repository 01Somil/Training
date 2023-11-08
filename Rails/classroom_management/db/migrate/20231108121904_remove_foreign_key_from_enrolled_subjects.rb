class RemoveForeignKeyFromEnrolledSubjects < ActiveRecord::Migration[7.1]
  def change
    remove_foreign_key :enrolled_subjects, :teachers
  end
end
