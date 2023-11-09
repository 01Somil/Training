class CreateBooks < ActiveRecord::Migration[7.1]
  def change
    create_table :books do |t|
      t.string :title
      t.integer :year_published
      t.boolean :out_of_stock
      t.integer :quantity
      t.decimal :price, precision: 10, scale: 2
      t.references :author, null: false, foreign_key: true
      t.references :supplier, null: false, foreign_key: true

      t.timestamps
    end
  end
end
