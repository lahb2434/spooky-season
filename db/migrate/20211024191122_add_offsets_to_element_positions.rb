class AddOffsetsToElementPositions < ActiveRecord::Migration[6.1]
  def change
    add_column :element_positions, :xOffset, :integer
    add_column :element_positions, :yOffset, :integer
  end
end
