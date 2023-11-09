class ChangeGstnNullConstraintFromSellers < ActiveRecord::Migration[7.1]
  def change
    change_column_null :sellers, :gstn, false
  end
end
