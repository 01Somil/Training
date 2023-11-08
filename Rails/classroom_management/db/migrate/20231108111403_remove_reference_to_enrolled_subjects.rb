class RemoveReferenceToEnrolledSubjects < ActiveRecord::Migration[7.1]
  def change
    remove_reference :enrolled_subjects, :subjects, foreign_key: true
  end
end
