class CreateMoves < ActiveRecord::Migration[7.0]
  def change
    create_table :moves do |t|
      t.string :name, index: { unique: true }, null: false 
      t.timestamps
    end
  end
end
