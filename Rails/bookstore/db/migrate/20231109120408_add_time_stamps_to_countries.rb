class AddTimeStampsToCountries < ActiveRecord::Migration[7.1]
  def change
    add_timestamps :countries
  end
end
