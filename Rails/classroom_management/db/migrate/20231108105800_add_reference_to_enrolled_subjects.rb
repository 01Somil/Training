class AddReferenceToEnrolledSubjects < ActiveRecord::Migration[7.1]
  def change
    add_reference :enrolled_subjects, :subjects, foreign_key: true 
    add_reference :enrolled_subjects, :students, foreign_key: true
  end
end
