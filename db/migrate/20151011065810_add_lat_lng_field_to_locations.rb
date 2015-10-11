
class AddLatLngFieldToLocations < ActiveRecord::Migration
  def change
    add_column :locations, :lat, :string
    add_column :locations, :lng, :string
  end
end
