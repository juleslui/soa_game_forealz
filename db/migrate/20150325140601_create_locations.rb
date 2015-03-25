class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :name
      t.float :x_coordinates
      t.float :y_coordinates
      t.timestamps null: false
    end
  end
end
