class CreateOrders < ActiveRecord::Migration[7.1]
  def change
    create_table :orders do |t|
      t.date :date_submitted
      t.decimal :tax, precision: 8, scale: 2
      t.decimal :total, precision: 10, scale: 2
      t.references :customer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
