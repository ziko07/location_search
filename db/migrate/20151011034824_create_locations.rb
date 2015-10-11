class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :title
      t.text :location
      t.text :photo

      t.timestamps null: false
    end
  end
end
