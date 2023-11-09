class CreateReviews < ActiveRecord::Migration[7.1]
  def change
    create_table :reviews do |t|
      t.references :book, null: false, foreign_key: true
      t.string :title
      t.text :body
      t.integer :rating
      t.references :customer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
