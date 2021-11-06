class CreateElementPositions < ActiveRecord::Migration[6.1]
  def change
    create_table :element_positions do |t|
      t.integer :xPosition
      t.integer :yPosition
      t.references :card, null: false, foreign_key: true
      t.references :element, null: false, foreign_key: true

      t.timestamps
    end
  end
end
  