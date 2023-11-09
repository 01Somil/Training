class RemoveTimeStampsFromCountries < ActiveRecord::Migration[7.1]
  def change
    remove_timestamps :countries
  end
end
