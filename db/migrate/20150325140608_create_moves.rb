class CreateMoves < ActiveRecord::Migration
  def change
    create_table :moves do |t|
      t.string :name
      t.integer :max_number
      t.string :kind
      t.integer :damage
      t.references :creature
      t.timestamps null: false
    end
  end
end
