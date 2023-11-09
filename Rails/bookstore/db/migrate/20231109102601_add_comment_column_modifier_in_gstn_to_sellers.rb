class AddCommentColumnModifierInGstnToSellers < ActiveRecord::Migration[7.1]
  def change
    change_column :sellers, :gstn, :string, comment: "This is sellers unique gst number"
  end
end
