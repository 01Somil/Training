class CreateMarks < ActiveRecord::Migration[7.1]
  def change
    create_table :marks, primary_key: [:mark_id, :text] do |t|
      t.references :enrolled_subject, null: false, foreign_key: true
      t.integer :mark_id
      t.integer :marks
      t.text :description
      t.timestamps
    end
  end
end

