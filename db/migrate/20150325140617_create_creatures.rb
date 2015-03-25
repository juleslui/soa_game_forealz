class CreateCreatures < ActiveRecord::Migration
  def change
    create_table :creatures do |t|
      t.string :name
      t.string :nickname
      t.string :kind
      t.integer :hp
      t.string :description
      t.references :user
      t.references :location
      t.timestamps null: false
    end
  end
end
