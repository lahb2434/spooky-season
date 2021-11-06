class ChangeColumnNamesInElementPositions < ActiveRecord::Migration[6.1]
  def change
    rename_column :element_positions, :x_position, :xPosition
    rename_column :element_positions, :y_position, :yPosition
    rename_column :element_positions, :x_offset, :xOffset
    rename_column :element_positions, :y_offset, :yOffset
    rename_column :element_positions, :image_size, :imageSize
  end
end
