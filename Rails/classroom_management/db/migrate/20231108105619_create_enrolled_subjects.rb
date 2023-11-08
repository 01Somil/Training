class CreateEnrolledSubjects < ActiveRecord::Migration[7.1]
  def change
    create_table :enrolled_subjects do |t|

      t.timestamps
    end
  end
end
