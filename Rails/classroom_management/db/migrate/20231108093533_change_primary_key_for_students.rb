class ChangePrimaryKeyForStudents < ActiveRecord::Migration[7.1]
  def change
    change_table :students,id: false do |t|
      t.remove :id
      t.string :roll_no,primary_key: true
    end
  end
end
