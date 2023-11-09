class ChangeOutOfStockDefaultConstraintFromBooks < ActiveRecord::Migration[7.1]
  def change
    change_column_default :books, :out_of_stock, true
  end
end
