class AddForeignKeyToEnrolledSubjects < ActiveRecord::Migration[7.1]
  def change
    add_column :enrolled_subjects, :student_id, :integer
    change_table :students do |t|
      t.remove :roll_no
      t.integer :roll_no,primary_key: true
    end
    add_foreign_key :enrolled_subjects, :students, column: :student_id, primary_key: :roll_no
  end
end
