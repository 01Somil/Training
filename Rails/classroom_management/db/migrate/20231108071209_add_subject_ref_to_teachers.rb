class AddSubjectRefToTeachers < ActiveRecord::Migration[7.1]
  def change
    add_reference :teachers, :subject, null: false, foreign_key: true
  end
end
