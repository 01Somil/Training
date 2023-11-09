class ChangeReversibleAddressToStudents < ActiveRecord::Migration[7.1]
  def change
    reversible do |direction|
      change_table :students do |t|
        direction.up {t.change :address, :string}
        direction.down {t.change :address, :text}
      end
    end
  end
end
